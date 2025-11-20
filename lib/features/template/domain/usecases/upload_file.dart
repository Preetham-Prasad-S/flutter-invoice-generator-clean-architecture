import 'package:app_prototype/core/errors/failure.dart';
import 'package:app_prototype/core/usecases/usecase.dart';
import 'package:app_prototype/features/template/domain/repositories/template_repository.dart';
import 'package:fpdart/src/either.dart';

class UploadFile extends Usecase<String, UploadFileParams> {
  final TemplateRepository _repository;

  UploadFile({required TemplateRepository repository})
    : _repository = repository;

  @override
  Future<Either<Failure, String>> call(UploadFileParams params) async {
    return await _repository.uploadFile(
      fileName: params.fileName,
      filePath: params.filePath,
    );
  }
}

class UploadFileParams {
  final String filePath;
  final String fileName;
  const UploadFileParams({required this.filePath, required this.fileName});
}
