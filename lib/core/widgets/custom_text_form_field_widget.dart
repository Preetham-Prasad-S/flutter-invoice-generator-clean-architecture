import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String textFieldHintText;
  final String textFieldLabelText;
  final TextInputType keyBoardType;
  final TextEditingController textFieldController;
  final IconData textFieldIcon;

  const CustomTextFormFieldWidget({
    super.key,
    required this.textFieldIcon,
    required this.textFieldHintText,
    required this.textFieldLabelText,
    required this.keyBoardType,
    required this.textFieldController,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Custom Label for the textfield
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Icon(
                textFieldIcon,
                size: screenWidth * 0.05,
                color: Colors.black54,
              ),
              SizedBox(width: 10),
              Text(
                textFieldLabelText,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "Quicksand",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        // Gapping for the textfield
        const SizedBox(height: 10),

        // Acutal TextFormField
        TextFormField(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return "$textFieldHintText Missing";
            }
            return "";
          },
          controller: textFieldController,
          keyboardType: keyBoardType,
          style: const TextStyle(
            fontFamily: "Quicksand",
            decoration: TextDecoration.none,
            color: AppColor.primaryAppColor,
            fontWeight: FontWeight.w600,
          ),
          cursorColor: AppColor.primaryAppColor,
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              color: Color.from(alpha: 0.259, red: 0, green: 0, blue: 0),
            ),
            hintText: textFieldHintText,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColor.primaryAppColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black12, width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
