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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Final Invoice Details",
                    style: TextStyle(
                      color: AppColor.primaryAppColor,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.055,
                    ),
                  ),
                  Icon(Ionicons.documents, color: AppColor.primaryAppColor),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(color: Colors.black12, thickness: 2.5),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Ionicons.business,
                      size: screenWidth * 0.05,
                      color: AppColor.primaryAppColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name",
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Quicksand",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "JUST PLAY PRODUCTIONS",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Quicksand",
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Ionicons.calendar,
                      size: screenWidth * 0.05,
                      color: AppColor.primaryAppColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Invoice Date",
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Quicksand",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "28-11-2025",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Quicksand",
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
