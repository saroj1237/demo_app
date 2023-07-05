import 'package:demo_app/features/people/domain/entities/person.dart';
import 'package:dio/dio.dart';

abstract class PeopleRemoteDataSource {
  Future<List<Person>> getPeople();
}

class PeopleRemoteDataSourceImpl implements PeopleRemoteDataSource {
  final Dio _dio;
  PeopleRemoteDataSourceImpl(Dio dio) : _dio = dio;
  @override
  Future<List<Person>> getPeople() async {
    try {
      final response = await _dio.get("/users");
      Iterable data = response.data;
      List<Person> people =
          List<Person>.from(data.map((e) => Person.fromJson(e)));
      return people;
    } catch (e) {
      rethrow;
    }
  }
}
