import 'package:app_prototype/core/errors/exception.dart';
import 'package:app_prototype/core/errors/failure.dart';
import 'package:app_prototype/features/template/data/datasources/remote_data_source.dart';
import 'package:app_prototype/features/template/domain/entities/template.dart';
import 'package:app_prototype/features/template/domain/repositories/template_repository.dart';
import 'package:fpdart/src/either.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  final RemoteDataSource _remoteDataSource;

  TemplateRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, void>> uploadTemplate(Template template) async {
    try {
      await _remoteDataSource.uploadTemplate(template);
      return right(null);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
