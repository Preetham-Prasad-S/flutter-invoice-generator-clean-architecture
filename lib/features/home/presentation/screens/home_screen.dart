import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/core/widgets/custom_title_widget.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card_viewer_widget.dart';
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
            AppColor.scaffoldBackgroundGradient1,
            AppColor.scaffoldBackgroundGradient2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: _HomeScreenBody(),

        floatingActionButton: _HomeScreenActionButton(),
      ),
    );
  }
}

class _HomeScreenActionButton extends StatelessWidget {
  const _HomeScreenActionButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InvoiceBillScreen()),
          ),
      backgroundColor: const Color.fromARGB(255, 40, 77, 244),
      child: Icon(
        Ionicons.add_circle_outline,
        size: 30,
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Title Widget
        const CustomTitleWidget(
          buttonIcon: Ionicons.menu,
          titleText: "Company Invoice Generator",
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Top Clearance Gap

                // Carousal Slider For Statistics
                const CustomStatisticsWidget(),

                // Latest Invoice Title
                _LastestInvoiceTitle(),

                // ListView Builder For the Invoice Cards
                const CustomInvoiceCardViewerWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _LastestInvoiceTitle extends StatelessWidget {
  const _LastestInvoiceTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                iconSize: 26,
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
    );
  }
}
