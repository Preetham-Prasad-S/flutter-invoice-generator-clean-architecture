import 'package:app_prototype/core/widgets/custom_title_widget.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card_viewer.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_statistics_widget.dart';
import 'package:app_prototype/features/invoice/presentation/screens/invoice_bill_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [
            const Color.fromARGB(255, 255, 255, 255),
            const Color.fromARGB(255, 201, 211, 255),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Top Clearance Gap
              const SizedBox(height: 50),

              //Custom AppBar
              // const CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CustomTitleWidget(
                  topText: "Company",
                  bottomText: "Invoice Generator",
                ),
              ),

              // Carousal Slider For Statistics
              const CustomStatisticsWidget(),

              // "Company Invoice" --> title text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Company Invoices",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 25, 114, 147),
                        fontFamily: "Quicksand",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    // Button to go the invoice page
                    IconButton(
                      color: const Color.fromARGB(255, 25, 114, 147),
                      iconSize: 30,
                      onPressed: () {},
                      icon: Icon(Ionicons.arrow_forward_circle_outline),
                    ),
                  ],
                ),
              ),

              // ListView Builder For the Invoice Cards
              CustomInvoiceCardViewer(),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InvoiceBillScreen()),
              ),
          backgroundColor: const Color.fromARGB(255, 25, 114, 147),
          child: Icon(
            Ionicons.add_circle_outline,
            size: 30,
            color: const Color.fromARGB(255, 158, 229, 255),
          ),
        ),
      ),
    );
  }
}
