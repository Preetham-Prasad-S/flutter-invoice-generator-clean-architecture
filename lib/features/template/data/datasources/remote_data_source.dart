import 'package:app_prototype/features/template/data/models/template_model.dart';

abstract class RemoteDataSource {
  Future<void> uploadTemplate(TemplateModel templateModel);

  Future<String> uploadFile(String filePath, String fileName);
}
