import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomInvoiceCard extends StatelessWidget {
  final String invoiceNumber;
  final String companyName;
  final String month;
  final String year;

  const CustomInvoiceCard({
    super.key,
    required this.companyName,
    required this.invoiceNumber,
    required this.month,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        child: Card(
          elevation: 10,
          shadowColor: Colors.black26,
          color: const Color.fromARGB(171, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Half , Invoice and company name
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "#INVOICE-$invoiceNumber",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 40, 78, 244),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontFamily: "Quicksand",
                          ),
                          maxLines: 3,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              size: 18,
                              Ionicons.business,
                              color: const Color.fromARGB(144, 0, 0, 0),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 300,
                              child: Text(
                                companyName,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Quicksand",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Issued Date",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Quicksand",
                          ),
                        ),
                        Text(
                          "$month",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Quicksand",
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Year",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Quicksand",
                          ),
                        ),
                        Text(
                          "$year",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Quicksand",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
