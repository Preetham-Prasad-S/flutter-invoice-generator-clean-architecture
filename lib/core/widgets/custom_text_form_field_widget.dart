import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String textFieldHintText;
  final String textFieldLabelText;
  final TextInputType keyBoardType;
  final TextEditingController textFieldController;
  final IconData textFieldIcon;
  final double screenWidth;

  const CustomTextFormFieldWidget({
    super.key,
    required this.textFieldIcon,
    required this.textFieldHintText,
    required this.textFieldLabelText,
    required this.keyBoardType,
    required this.textFieldController,
    required this.screenWidth,
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
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Quicksand",
                  fontSize: screenWidth * 0.036,
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
              return "$textFieldLabelText Missing";
            }
            return null;
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
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 188, 50, 40),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 188, 50, 40),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            hintStyle: const TextStyle(
              fontFamily: "Quicksand",
              color: Color.from(alpha: 0.259, red: 0, green: 0, blue: 0),
            ),
            hintText: "Enter " + textFieldHintText,
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
