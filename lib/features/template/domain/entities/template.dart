class Template {
  final String templateName;
  final String? templateFilePath;
  final String? templateFileUrl;
  final Map<String, dynamic> templateDetails;

  Template({
    required this.templateName,
    this.templateFilePath,
    this.templateFileUrl,
    required this.templateDetails,
  });

  Template copyWith(
    String? templateName,
    String? templateFilePath,
    String? templateFileUrl,
    Map<String, dynamic> templateDetails,
  ) {
    return Template(
      templateName: templateName ?? this.templateName,
      templateDetails: templateDetails,
      templateFilePath: templateFilePath ?? this.templateFilePath,
      templateFileUrl: templateFileUrl ?? this.templateFileUrl,
    );
  }
}
