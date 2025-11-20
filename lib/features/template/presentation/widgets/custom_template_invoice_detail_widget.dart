import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../core/widgets/custom_text_form_field_widget.dart';

class CustomTemplateInvoiceDetailWidget extends ConsumerWidget {
  final Function(String id) deleteButton;

  const CustomTemplateInvoiceDetailWidget({
    super.key,
    required this.deleteButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templateDetails = ref.watch(templateDetailsNotiferProvider);

    return templateDetails.length > 0
        ? ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 15),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      CustomTextFormFieldWidget(
                        textFieldIcon: Ionicons.document_outline,
                        keyBoardType: TextInputType.text,
                        textFieldController: templateDetails[index].cellValue,
                        textFieldHintText: "Cell Number",
                        textFieldLabelText: "Parameter ${index + 1}",
                      ),
                      SizedBox(height: 10),
                      CustomTextFormFieldWidget(
                        textFieldIcon: Ionicons.document_text_outline,
                        keyBoardType: TextInputType.text,
                        textFieldController: templateDetails[index].inputValue,

                        textFieldHintText: "Input Text",
                        textFieldLabelText: "Value ${index + 1}",
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: const Color.fromARGB(118, 255, 17, 0),
                      backgroundColor: const Color.fromARGB(255, 255, 213, 210),
                    ),
                    onPressed: () => deleteButton(templateDetails[index].id),
                    icon: Icon(Ionicons.trash),
                  ),
                ),
              ],
            );
          },
          itemCount: templateDetails.length,
        )
        : SizedBox(
          height: 200,
          child: Center(
            child: Text(
              "No Details",
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
