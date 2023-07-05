part of 'people_bloc.dart';

enum PeopleBlocStatus {
  initial,
  loading,
  failure,
  success,
}

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState({
    required PeopleBlocStatus status,
    CustomFailure? error,
    List<Person>? people,
  }) = _PeopleState;

  factory PeopleState.initial() =>
      const PeopleState(status: PeopleBlocStatus.initial);
}
