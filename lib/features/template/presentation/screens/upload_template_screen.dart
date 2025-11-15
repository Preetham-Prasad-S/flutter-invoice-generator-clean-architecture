import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/widgets/custom_text_form_field_widget.dart';
import '../widgets/custom_file_picker_widget.dart';
import '../widgets/custom_template_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../core/widgets/custom_title_widget.dart';

class UploadTemplateScreen extends ConsumerStatefulWidget {
  const UploadTemplateScreen({super.key});

  @override
  ConsumerState<UploadTemplateScreen> createState() =>
      _UploadTemplateScreenState();
}

class _UploadTemplateScreenState extends ConsumerState<UploadTemplateScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _companyNameController;
  late final List<TextEditingController> _cellValueController;
  late final List<TextEditingController> _inputTextValueController;
  int parameterCount = 0;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _companyNameController = TextEditingController();
    _cellValueController = <TextEditingController>[];
    _inputTextValueController = <TextEditingController>[];
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    _inputTextValueController.forEach((controller) => controller.dispose());
    _cellValueController.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void addParameter() {
    setState(() {
      _cellValueController.add(TextEditingController());
      _inputTextValueController.add(TextEditingController());
      parameterCount += 1;
    });
  }

  void removeParameter() {
    setState(() {
      if (parameterCount != 0) {
        _cellValueController.removeLast();
        _inputTextValueController.removeLast();
        parameterCount -= 1;
      }
    });
  }

  Map<String, String> getTemplateDetails() {
    return <String, String>{
      for (int i = 0; i < _cellValueController.length; i++)
        _cellValueController[i].text: _inputTextValueController[i].text,
    };
  }

  @override
  Widget build(BuildContext context) {
    final uploadTemplateController = ref.read(
      uploadTemplateNotifierProvider.notifier,
    );

    final uploadTemplate = ref.watch(uploadTemplateNotifierProvider);

    final filePath = ref.watch(fileNotifierProvider);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [
            const Color.fromARGB(255, 255, 255, 255),
            const Color.fromARGB(255, 201, 211, 255),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  // Page Title
                  const CustomTitleWidget(
                    topText: "New Company",
                    bottomText: "Template",
                  ),
                  const SizedBox(height: 30),
                  CustomFilePickerWidget(),
                  const SizedBox(height: 10),
                  CustomTextFormFieldWidget(
                    textFieldController: _companyNameController,
                    keyBoardType: TextInputType.text,
                    textFieldHintText: "Enter template Name",
                    textFieldLabelText: "Template Name",
                  ),
                  const SizedBox(height: 30),
                  // const Divider(
                  //   color: Color.fromARGB(255, 40, 77, 244),
                  //   thickness: 1.5,
                  // ),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.black26,
                    color: const Color.fromARGB(131, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: const Text(
                              "Company Invoice Details",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 40, 78, 244),
                                fontFamily: "Quicksand",
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                iconSize: 30,
                                style: IconButton.styleFrom(
                                  foregroundColor: const Color.fromARGB(
                                    255,
                                    40,
                                    78,
                                    244,
                                  ),
                                ),
                                onPressed: () => addParameter(),
                                icon: const Icon(Ionicons.add_circle_outline),
                              ),
                              IconButton(
                                iconSize: 30,
                                style: IconButton.styleFrom(
                                  foregroundColor: const Color.fromARGB(
                                    255,
                                    40,
                                    78,
                                    244,
                                  ),
                                ),
                                onPressed: () => removeParameter(),
                                icon: const Icon(
                                  Ionicons.remove_circle_outline,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 25, 114, 147),
                  //   thickness: 1.5,
                  // ),
                  CustomTemplateDetailsWidget(
                    parameterCount: parameterCount,
                    cellValueController: _cellValueController,
                    inputTextValueController: _inputTextValueController,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            uploadTemplateController.uploadTemplate(
              filePath: "dasdasfsd",
              templateName: _companyNameController.text.trim(),
              templateDetails: getTemplateDetails(),
            );
          },
          backgroundColor: const Color.fromARGB(255, 40, 78, 244),
          child: const Icon(
            Ionicons.checkmark_circle_outline,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
