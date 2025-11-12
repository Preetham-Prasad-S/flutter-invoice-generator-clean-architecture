import 'package:flutter/material.dart';

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
        height: 150,
        child: Card(
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Invoice Number : $invoiceNumber",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 25, 114, 147),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "Company Name : $companyName",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 25, 114, 147),
                    overflow: TextOverflow.ellipsis,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "Month : $month",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 25, 114, 147),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "Year : $year",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 25, 114, 147),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Quicksand",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
