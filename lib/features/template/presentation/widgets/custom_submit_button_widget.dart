import 'package:app_prototype/core/helper/snack_bar_helper_function.dart';
import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:app_prototype/features/template/presentation/providers/template_details_notifier.dart';
import 'package:app_prototype/features/template/presentation/providers/upload_template_provider/upload_template_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CustomSubmitButtonWidget extends ConsumerWidget {
  const CustomSubmitButtonWidget({
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

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 29, 61, 201),

              const Color.fromARGB(255, 69, 100, 236),
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            final validate = pageValidator(templateFile.value);

            final snackBarErrorMessage = errorMesssage(
              templateFile.value,
              templateDetails,
            );
            print(snackBarErrorMessage);
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

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.arrow_up),
              SizedBox(width: 10),
              Text(
                "Add Template",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: AppColor.cardShadowColor,
            overlayColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: AppColor.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fixedSize: Size(double.maxFinite, 50),
          ),
        ),
      ),
    );
  }
}
