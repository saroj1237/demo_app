import 'package:dartz/dartz.dart';
import 'package:demo_app/core/usercases/base_usecase.dart';
import 'package:demo_app/features/people/domain/entities/person.dart';

abstract class PeopleRepository {
  Future<Either<CustomFailure, List<Person>>> getPeople();
}
