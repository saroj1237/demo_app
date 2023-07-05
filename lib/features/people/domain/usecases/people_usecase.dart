import 'package:dartz/dartz.dart';
import 'package:demo_app/core/usercases/base_usecase.dart';
import 'package:demo_app/features/people/domain/entities/person.dart';
import 'package:demo_app/features/people/domain/repositories/people_repository.dart';

class PeopleUsecase implements UseCase<List<Person>, NoParams> {
  final PeopleRepository repository;
  PeopleUsecase(this.repository);
  @override
  Future<Either<CustomFailure, List<Person>>> call(params) async {
    return await repository.getPeople();
  }
}
