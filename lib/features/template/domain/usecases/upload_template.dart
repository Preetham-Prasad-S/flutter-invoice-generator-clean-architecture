import 'package:app_prototype/core/errors/failure.dart';
import 'package:app_prototype/core/usecases/usecase.dart';
import 'package:app_prototype/features/template/domain/entities/template.dart';
import 'package:app_prototype/features/template/domain/repositories/template_repository.dart';
import 'package:fpdart/src/either.dart';

class UploadTemplate implements Usecase<void, UploadTemplateParams> {
  final TemplateRepository _repository;

  UploadTemplate({required TemplateRepository repository})
    : _repository = repository;

  @override
  Future<Either<Failure, void>> call(UploadTemplateParams params) async {
    return await _repository.uploadTemplate(params.template);
  }
}

class UploadTemplateParams {
  final Template template;

  UploadTemplateParams({required this.template});
}
