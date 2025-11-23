import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/core/widgets/custom_text_form_field_widget.dart';
import 'package:app_prototype/features/template/presentation/widgets/custom_file_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomTemplateFileDetailsWidget extends StatelessWidget {
  final TextEditingController templateNameController;

  const CustomTemplateFileDetailsWidget({
    required this.templateNameController,
    required this.screenWidth,
  });

  final double screenWidth;

  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black26,
      color: const Color.fromARGB(171, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Template Details",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 40, 78, 244),
                    fontFamily: "Quicksand",
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  color: AppColor.primaryAppColor,
                  Ionicons.folder_open,
                  size: screenWidth * 0.06,
                ),
              ],
            ),
            SizedBox(height: 15),
            CustomFilePickerWidget(
              icon: Ionicons.file_tray_full_outline,
              screenWidth: screenWidth,
            ),
            const SizedBox(height: 10),
            CustomTextFormFieldWidget(
              screenWidth: screenWidth,
              textFieldIcon: Ionicons.receipt_outline,
              textFieldController: templateNameController,
              keyBoardType: TextInputType.text,
              textFieldHintText: "Template Name",
              textFieldLabelText: "Template Name",
            ),
          ],
        ),
      ),
    );
  }
}
