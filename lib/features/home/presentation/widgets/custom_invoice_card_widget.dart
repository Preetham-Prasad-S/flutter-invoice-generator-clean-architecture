import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card_calendar_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomInvoiceCardWidget extends StatelessWidget {
  final String invoiceNumber;
  final String companyName;
  final String month;
  final String year;

  const CustomInvoiceCardWidget({
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
        shadowColor: AppColor.fadedBlack,
        color: const Color.fromARGB(171, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Half , Invoice and company name
              InvoiceCardTitleWidget(
                invoiceNumber: invoiceNumber,
                companyName: companyName,
              ),
              SizedBox(height: 5),
              Divider(thickness: 1.5, color: Colors.black12),
              SizedBox(height: 5),
              CustomInvoiceCardCalendarDetailsWidget(month: month, year: year),
            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceCardTitleWidget extends StatelessWidget {
  const InvoiceCardTitleWidget({
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
                fontWeight: FontWeight.bold,
                fontSize: 14,
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
            Icon(size: 18, Ionicons.business, color: Colors.black38),
            SizedBox(width: 15),
            SizedBox(
              width: 200,
              child: Text(
                companyName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
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
