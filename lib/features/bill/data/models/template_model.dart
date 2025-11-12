class TemplateModel {
  final String name;
  final String fileUrl;
  final Map<String, String> details;

  TemplateModel({
    required this.name,
    required this.fileUrl,
    required this.details,
  });

  Map<String, dynamic> toJson() {
    return {"name": name, "fileUrl": fileUrl, "details": details};
  }

  

  @override
  String toString() {
    return "Template(name : $name, file : $fileUrl}, details : $details)";
  }
}
