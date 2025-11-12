import '../widgets/custom_date_picker_widget.dart';
import '../widgets/custom_final_invoice_widget.dart';
import 'package:ionicons/ionicons.dart';
import '../widgets/custom_drop_down_widget.dart';
import '../../../../core/widgets/custom_title_widget.dart';
import '../../../../core/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

class InvoiceBillScreen extends StatelessWidget {
  final TextEditingController rateController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  InvoiceBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 229, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Screen Clearance
              const SizedBox(height: 50),
              // Page Title
              const CustomTitleWidget(
                topText: "Generate New",
                bottomText: "Company Invoice",
              ),
              const SizedBox(height: 30),
              // Final Invoice Preview
              const CustomFinalInvoiceWidget(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Company Invoice Details",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 25, 114, 147),
                      fontFamily: "Quicksand",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Ionicons.clipboard_outline,
                    color: const Color.fromARGB(255, 25, 114, 147),
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 25, 114, 147),
                thickness: 1.5,
              ),
              SizedBox(height: 15),
              // Custom drop down for company
              const CustomDropDownWidget(),
              const SizedBox(height: 10),
              // Rate and Quantity Field
              Row(
                children: [
                  Flexible(
                    child: CustomTextFormFieldWidget(
                      textFieldController: rateController,
                      keyBoardType: const TextInputType.numberWithOptions(),
                      textFieldLabelText: "Rate",
                      textFieldHintText: "Cost of service",
                    ),
                  ),
                  Flexible(
                    child: CustomTextFormFieldWidget(
                      textFieldController: quantityController,
                      keyBoardType: const TextInputType.numberWithOptions(),
                      textFieldLabelText: "Quantity",
                      textFieldHintText: "No of services",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Picking dates for the invoice
              CustomDatePickerWidget(),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 25, 114, 147),
        child: const Icon(
          Ionicons.checkmark_circle_outline,
          size: 30,
          color: Color.fromARGB(255, 158, 229, 255),
        ),
      ),
    );
  }
}
