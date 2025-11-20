import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/template/presentation/providers/upload_template_notifier.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CustomSubmitButtonWidget extends StatelessWidget {
  const CustomSubmitButtonWidget({
    required this.templateNameController,
    required this.uploadFile,
    required this.templateFileController,
  });

  final UploadTemplateNotifier uploadFile;
  final AsyncValue<PlatformFile?> templateFileController;
  final TextEditingController templateNameController;

  @override
  Widget build(BuildContext context) {
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
          onPressed:
              () => uploadFile.uploadTemplate(
                fileName: templateFileController.value!.name,
                filePath: templateFileController.value!.path!,
                templateName: "Testing",
                templateDetails: {},
              ),

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
