import 'package:dartz/dartz.dart';
import 'package:demo_app/core/usercases/base_usecase.dart';
import 'package:demo_app/features/people/data/remote_datasources/people_remote_datasource.dart';
import 'package:demo_app/features/people/domain/entities/person.dart';
import 'package:demo_app/features/people/domain/repositories/people_repository.dart';

class PeopleRepositoryImpl implements PeopleRepository {
  final PeopleRemoteDataSource remoteDataSource;
  PeopleRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<CustomFailure, List<Person>>> getPeople() async {
    try {
      final people = await remoteDataSource.getPeople();
      return Right(people);
    } catch (e) {
      //TODO: handle exception
      return Left(e.toString());
    }
  }
}
