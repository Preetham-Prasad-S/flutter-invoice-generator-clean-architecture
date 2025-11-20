import 'package:app_prototype/features/template/domain/entities/template.dart';

class TemplateModel extends Template {
  const TemplateModel({
    required String templateId,
    required String templateName,
    String? templateFileUrl,
    required Map<String, dynamic> templateDetails,
  }) : super(
         templateId: templateId,
         templateName: templateName,
         templateFileUrl: templateFileUrl,
         templateDetails: templateDetails,
       );

  Map<String, dynamic> toJson() {
    return {
      'templateId': templateId,
      'templateName': templateName,
      'templateFileUrl': templateFileUrl,
      'templateDetails': templateDetails,
    };
  }

  factory TemplateModel.fromEntity(Template entity) {
    return TemplateModel(
      templateId: entity.templateId,
      templateName: entity.templateName,
      templateFileUrl: entity.templateFileUrl,
      templateDetails: entity.templateDetails,
    );
  }
}
