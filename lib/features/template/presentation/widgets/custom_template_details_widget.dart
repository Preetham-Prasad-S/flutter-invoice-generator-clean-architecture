import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_text_form_field_widget.dart';

class CustomTemplateDetailsWidget extends StatelessWidget {
  const CustomTemplateDetailsWidget({
    super.key,
    required this.parameterCount,
    required List<TextEditingController> cellValueController,
    required List<TextEditingController> inputTextValueController,
  }) : _cellValueController = cellValueController,
       _inputTextValueController = inputTextValueController;

  final int parameterCount;
  final List<TextEditingController> _cellValueController;
  final List<TextEditingController> _inputTextValueController;

  @override
  Widget build(BuildContext context) {
    return (parameterCount != 0)
        ? ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 15),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: CustomTextFormFieldWidget(
                        keyBoardType: TextInputType.text,
                        textFieldController: _cellValueController[index],
                        textFieldHintText: "Cell Number",
                        textFieldLabelText: "Parameter ${index + 1}",
                      ),
                    ),
                    Flexible(
                      child: CustomTextFormFieldWidget(
                        keyBoardType: TextInputType.text,
                        textFieldController: _inputTextValueController[index],
                        textFieldHintText: "Input Text",
                        textFieldLabelText: "Value ${index + 1}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            );
          },
          itemCount: parameterCount,
        )
        : SizedBox(
          height: 350,
          child: Center(
            child: Text(
              "Add Template Details",
              style: TextStyle(
                color: Colors.black26,
                fontFamily: "Quicksand",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        );
  }
}
