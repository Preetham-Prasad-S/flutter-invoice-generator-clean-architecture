import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/template/presentation/widgets/custom_template_submit_button_widget.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.scaffoldBackgroundGradient1,
            AppColor.scaffoldBackgroundGradient2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          // Page Title
          children: [
            CustomTitleWidget(
              onPressed: () => Navigator.of(context).pop(),
              buttonIcon: Ionicons.exit_outline,
              titleText: "Generate New Company Invoice",
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                children: [
                  const SizedBox(height: 30),
                  // Final Invoice Preview
                  const CustomFinalInvoiceWidget(),
                  const SizedBox(height: 30),
                  Card(
                    color: AppColor.cardColor,
                    shadowColor: AppColor.cardShadowColor,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Company Invoice Details",
                                style: TextStyle(
                                  color: AppColor.primaryAppColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenWidth * 0.05,
                                ),
                              ),
                              Icon(
                                Ionicons.clipboard,
                                color: AppColor.primaryAppColor,
                              ),
                            ],
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
                                  screenWidth: screenWidth,
                                  textFieldIcon: Ionicons.chatbox_ellipses,
                                  textFieldController: rateController,
                                  keyBoardType:
                                      const TextInputType.numberWithOptions(),
                                  textFieldLabelText: "Rate",
                                  textFieldHintText: "Cost of service",
                                ),
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: CustomTextFormFieldWidget(
                                  screenWidth: screenWidth,
                                  textFieldIcon: Ionicons.chatbox_ellipses,
                                  textFieldController: quantityController,
                                  keyBoardType:
                                      const TextInputType.numberWithOptions(),
                                  textFieldLabelText: "Quantity",
                                  textFieldHintText: "No of services",
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Picking dates for the invoice
                  CustomDatePickerWidget(screenWidth: screenWidth),
                  SizedBox(height: 10),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
