import 'package:app_prototype/core/widgets/custom_title_widget.dart';
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
              SizedBox(height: 240, child: const CustomStatisticsWidget()),

              // "Company Invoice" --> title text
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black26,
                  color: const Color.fromARGB(171, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest Company Invoices",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 40, 78, 244),
                            fontFamily: "Quicksand",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        // Button to go the invoice page
                        IconButton(
                          color: const Color.fromARGB(255, 40, 78, 244),
                          iconSize: 30,
                          onPressed:
                              () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => InvoiceBillScreen(),
                                ),
                              ),
                          icon: Icon(Ionicons.chevron_forward_outline),
                        ),
                      ],
                    ),
                  ),
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
          backgroundColor: const Color.fromARGB(255, 40, 78, 244),
          child: Icon(
            Ionicons.add_circle_outline,
            size: 30,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
