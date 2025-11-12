import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String textFieldHintText;
  final String textFieldLabelText;
  final TextInputType keyBoardType;
  final TextEditingController textFieldController;

  const CustomTextFormFieldWidget({
    super.key,
    required this.textFieldHintText,
    required this.textFieldLabelText,
    required this.keyBoardType,
    required this.textFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Custom Label for the textfield
        Text(
          textFieldLabelText,
          style: const TextStyle(
            color: Color.fromARGB(255, 25, 114, 147),
            fontFamily: "Quicksand",
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        // Gapping for the textfield
        const SizedBox(height: 5),

        // Acutal TextFormField
        Card(
          color: Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: textFieldController,
            keyboardType: keyBoardType,
            style: const TextStyle(
              fontFamily: "Quicksand",
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 25, 114, 147),
              fontWeight: FontWeight.w600,
            ),
            cursorColor: const Color.fromARGB(255, 25, 114, 147),
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                color: Color.from(alpha: 0.259, red: 0, green: 0, blue: 0),
              ),
              hintText: textFieldHintText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
