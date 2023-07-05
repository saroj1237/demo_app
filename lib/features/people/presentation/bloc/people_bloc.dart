import 'dart:async';

import 'package:demo_app/core/usercases/base_usecase.dart';
import 'package:demo_app/features/people/domain/entities/person.dart';
import 'package:demo_app/features/people/domain/usecases/people_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'people_bloc.freezed.dart';
part 'people_event.dart';
part 'people_state.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final PeopleUsecase peopleUsecase;
  PeopleBloc({
    required this.peopleUsecase,
  }) : super(PeopleState.initial()) {
    on<PeopleEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getPeople: () => _onGetPeople(emit),
      );
    });
  }
  Future<void> _onGetPeople(Emitter<PeopleState> emit) async {
    emit(state.copyWith(status: PeopleBlocStatus.loading));
    final failureOrSuccess = await peopleUsecase(NoParams());
    failureOrSuccess.fold(
        (error) => emit(
              state.copyWith(
                status: PeopleBlocStatus.failure,
                error: error,
              ),
            ),
        (people) => emit(
              state.copyWith(
                status: PeopleBlocStatus.success,
                people: people,
              ),
            ));
  }
}
