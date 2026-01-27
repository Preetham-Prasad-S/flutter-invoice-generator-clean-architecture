import 'package:app_prototype/core/helper/snack_bar_helper_function.dart';
import 'package:app_prototype/core/widgets/custom_gradiant_button_widget.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:app_prototype/features/template/presentation/providers/template_details_notifier.dart';
import 'package:app_prototype/features/template/presentation/providers/upload_template_provider/upload_template_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CustomTemplateSubmitButtonWidget extends ConsumerWidget {
  const CustomTemplateSubmitButtonWidget({
    required this.templateNameController,
    required this.formKey,
  });
  final TextEditingController templateNameController;
  final GlobalKey<FormState> formKey;

  bool pageValidator(PlatformFile? templateFile) {
    final templateNameValidate = formKey.currentState!.validate();

    if (templateFile != null && templateNameValidate) {
      return true;
    }
    return false;
  }

  String? errorMesssage(
    PlatformFile? templateFile,
    TemplateDetailsNotifier templateDetails,
  ) {
    final templateNameValidate = formKey.currentState!.validate();

    if (templateFile == null) {
      return "File Not Selected";
    } else if (!templateNameValidate) {
      return "Empty Text Fields";
    } else if (templateDetails.getDetails().isEmpty) {
      return "Missing Invoice Details";
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templateFile = ref.watch(templateFileNotifierProvider);

    final templateDetails = ref.read(templateDetailsNotiferProvider.notifier);

    final uploadFileController = ref.read(
      uploadTemplateNotifierProvider.notifier,
    );

    ref.listen<UploadTemplateState>(uploadTemplateNotifierProvider, (
      _,
      result,
    ) {
      if (result is UploadSuccessTemplate)
        ScaffoldMessenger.of(context).showSnackBar(
          showSnackBar(
            title: "Successfully Uploaded Template",
            color: Colors.green.shade300,
            icon: Ionicons.checkmark_done,
          ),
        );
      else if (result is UploadErrorTemplate) {
        ScaffoldMessenger.of(context).showSnackBar(
          showSnackBar(
            title: result.failure.message,
            color: Colors.red.shade300,
            icon: Ionicons.checkmark_done,
          ),
        );
      }
    });

    return CustomGradiantButtonWidget(
      buttonText: "Add Template",
      onPressed: () {
        final validate = pageValidator(templateFile.value);

        final snackBarErrorMessage = errorMesssage(
          templateFile.value,
          templateDetails,
        );
        if (validate && !templateDetails.getDetails().isEmpty) {
          uploadFileController.uploadTemplate(
            fileName: templateFile.value!.name,
            filePath: templateFile.value!.path!,
            templateName: templateNameController.text.trim(),
            templateDetails: templateDetails.getDetails(),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            showSnackBar(
              title: snackBarErrorMessage!,
              color: Colors.red.shade300,
              icon: Ionicons.alert,
            ),
          );
        }
      },
    );
  }
}
