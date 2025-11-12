import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card.dart';
import 'package:flutter/material.dart';

class CustomInvoiceCardViewer extends StatelessWidget {
  CustomInvoiceCardViewer({super.key});
  final List<String> _companyName = [
    "Qualite Foods Private Limited",
    "Hotel New Saravanas",
    "Cubit Generals Private Limited",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      shrinkWrap: true,

      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return CustomInvoiceCard(
          invoiceNumber: "${index + 1}",
          companyName: _companyName[index],
          month: "January",
          year: "2025",
        );
      },
    );
  }
}
