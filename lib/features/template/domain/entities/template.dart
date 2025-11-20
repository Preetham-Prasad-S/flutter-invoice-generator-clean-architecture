class Template {
  final String templateId;
  final String templateName;
  final String? templateFileUrl;
  final Map<String, dynamic> templateDetails;

  const Template({
    required this.templateId,
    required this.templateName,
    required this.templateFileUrl,
    required this.templateDetails,
  });

  Template copyWith(
    String? templateName,
    String? templateFilePath,
    String? templateFileUrl,
    Map<String, dynamic> templateDetails,
  ) {
    return Template(
      templateId: this.templateId,
      templateName: templateName ?? this.templateName,
      templateDetails: templateDetails,
      templateFileUrl: templateFileUrl ?? this.templateFileUrl,
    );
  }

  @override
  String toString() {
    return 'Template(templateId: $templateId, templateName: $templateName, templateFileUrl: $templateFileUrl, templateDetails: $templateDetails)';
  }
}
