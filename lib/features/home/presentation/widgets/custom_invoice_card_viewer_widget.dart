import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card_widget.dart';
import 'package:flutter/material.dart';

class CustomInvoiceCardViewerWidget extends StatelessWidget {
  const CustomInvoiceCardViewerWidget({super.key});
  final List<String> _companyName = const [
    "Qualite Foods Private Limited",
    "Hotel New Saravanas",
    "Cubit Generals Private Limited",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return CustomInvoiceCardWidget(
          invoiceNumber: "${index + 1}",
          companyName: _companyName[index],
          month: "15-10-2025",
          year: "January",
        );
      },
    );
  }
}
