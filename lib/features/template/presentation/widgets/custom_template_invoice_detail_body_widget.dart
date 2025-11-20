import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:app_prototype/features/template/presentation/widgets/custom_template_invoice_detail_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CustomTemplateInvoiceDetailBodyWidget extends ConsumerWidget {
  const CustomTemplateInvoiceDetailBodyWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;

    final templateDetailsController = ref.read(
      templateDetailsNotiferProvider.notifier,
    );

    return Card(
      elevation: 10,
      shadowColor: AppColor.cardShadowColor,
      color: AppColor.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Company Invoice Details",
                  style: TextStyle(
                    color: AppColor.primaryAppColor,
                    fontFamily: "Quicksand",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(Ionicons.cloud_upload, color: AppColor.primaryAppColor),
              ],
            ),

            CustomTemplateInvoiceDetailWidget(
              deleteButton: (id) => templateDetailsController.deleteDetails(id),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: DottedBorder(
                options: RectDottedBorderOptions(
                  color: AppColor.primaryAppColor,
                  dashPattern: [8, 8],
                  strokeWidth: 2,
                ),
                child: TextButton(
                  onPressed: () => templateDetailsController.addDetails(),
                  child: Text(
                    "Add Invoice Detail",
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: Colors.transparent,
                    shape: RoundedRectangleBorder(),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    foregroundColor: AppColor.primaryAppColor,
                    minimumSize: Size(double.infinity, screenHeight * 0.055),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
