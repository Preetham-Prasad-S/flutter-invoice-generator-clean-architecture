import 'package:app_prototype/core/errors/exception.dart';
import 'package:app_prototype/features/template/data/models/template_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class RemoteDataSource {
  Future<void> uploadTemplate(TemplateModel templateModel);

  Future<String> uploadFile(String filePath, String fileName);
}
