import 'package:app_prototype/core/errors/failure.dart';
import 'package:app_prototype/features/template/domain/entities/template.dart';
import 'package:fpdart/fpdart.dart';

abstract class TemplateRepository {
  Future<Either<Failure, void>> uploadTemplate(Template template);
  Future<Either<Failure, String>> uploadFile({
    required String filePath,
    required String fileName,
  });
}
