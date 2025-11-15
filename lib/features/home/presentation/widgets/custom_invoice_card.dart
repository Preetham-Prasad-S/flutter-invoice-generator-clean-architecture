import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card_calendar_details.dart';
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
              InvoiceCardTitle(
                invoiceNumber: invoiceNumber,
                companyName: companyName,
              ),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 5),
              CustomInvoiceCardCalendarDetails(month: month, year: year),
            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceCardTitle extends StatelessWidget {
  const InvoiceCardTitle({
    super.key,
    required this.invoiceNumber,
    required this.companyName,
  });

  final String invoiceNumber;
  final String companyName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Icon(
              Ionicons.document_text,
              color: const Color.fromARGB(255, 40, 78, 244),
            ),
          ],
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
    );
  }
}
