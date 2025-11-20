import 'package:app_prototype/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class Usecase<UsecaseType, UsecaseParams> {
  Future<Either<Failure, UsecaseType>> call(UsecaseParams params);
}
