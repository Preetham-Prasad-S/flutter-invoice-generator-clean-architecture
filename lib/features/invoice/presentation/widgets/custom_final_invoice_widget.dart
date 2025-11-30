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
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                  Icon(Ionicons.documents, color: AppColor.primaryAppColor),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(color: Colors.black12, thickness: 2.5),
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Ionicons.business,
                          size: screenWidth * 0.05,
                          color: AppColor.secondaryAppColor,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Ionicons.calendar,
                          size: screenWidth * 0.05,
                          color: AppColor.secondaryAppColor,
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
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Ionicons.albums,
                          size: screenWidth * 0.05,
                          color: AppColor.secondaryAppColor,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quantity     ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Quicksand",
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "03",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quicksand",
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.currency_rupee_rounded,
                          size: screenWidth * 0.05,
                          color: AppColor.secondaryAppColor,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rate",
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Quicksand",
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "3,000",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quicksand",
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.numbers,
                          size: screenWidth * 0.05,
                          color: AppColor.secondaryAppColor,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Dates",
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Quicksand",
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "04",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quicksand",
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
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
