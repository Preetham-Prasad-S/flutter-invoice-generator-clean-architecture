import 'package:app_prototype/core/errors/exception.dart';
import 'package:app_prototype/features/template/data/models/template_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class RemoteDataSource {
  Future<Either<ServerException, void>> uploadTemplate(
    TemplateModel templateModel,
  );
}
