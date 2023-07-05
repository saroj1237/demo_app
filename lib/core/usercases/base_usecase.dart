import 'package:dartz/dartz.dart';

/// Custom failure may be custom class
typedef CustomFailure = String;

abstract class UseCase<Type, Params> {
  Future<Either<String, Type>> call(Params params);
}

class NoParams {}
