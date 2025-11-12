import 'package:app_prototype/core/errors/exception.dart';
import 'package:app_prototype/features/template/domain/entities/template.dart';
import 'package:fpdart/fpdart.dart';

abstract class RemoteDataSource {
  Future<Either<void, ServerException>> uploadTemplate(Template template);
}
