import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomFinalInvoiceWidget extends StatelessWidget {
  const CustomFinalInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Final Invoice Details",
                        style: TextStyle(
                          color: AppColor.primaryAppColor,
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.048,
                        ),
                      ),
                      Icon(Ionicons.documents, color: AppColor.primaryAppColor),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Final Invoice Details",
                    style: TextStyle(
                      color: AppColor.primaryAppColor,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.048,
                    ),
                  ),
                  Icon(Ionicons.documents, color: AppColor.primaryAppColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
