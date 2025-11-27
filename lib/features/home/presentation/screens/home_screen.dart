import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/core/widgets/custom_title_widget.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_invoice_card_viewer_widget.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_statistics_widget.dart';
import 'package:app_prototype/features/invoice/presentation/screens/invoice_bill_screen.dart';
import 'package:app_prototype/features/template/presentation/screens/upload_template_screen.dart';
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
        // backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: _HomeScreenBody(),
        // bottomNavigationBar: BottomNavigationBar(

        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Ionicons.home), label: "Home"),
        //     BottomNavigationBarItem(
        //       icon: Icon(Ionicons.paper_plane),
        //       label: "Invoice",
        //     ),
        //   ],
        // ),
        floatingActionButton: _HomeScreenActionButton(),
      ),
    );
  }
}

class _HomeScreenActionButton extends StatelessWidget {
  const _HomeScreenActionButton();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return FloatingActionButton(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UploadTemplateScreen()),
          ),
      backgroundColor: const Color.fromARGB(255, 40, 77, 244),
      child: Icon(
        Ionicons.add_circle_outline,
        size: screenWidth * 0.075,
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
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              // Carousal Slider For Statistics
              const CustomStatisticsWidget(),

              // Latest Invoice Title
              _LastestInvoiceTitle(),

              // ListView Builder For the Invoice Cards
              const CustomInvoiceCardViewerWidget(),
            ],
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
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black26,
        color: const Color.fromARGB(171, 255, 255, 255),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04,
            vertical: screenWidth * 0.01,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest Company Invoices",
                style: TextStyle(
                  color: const Color.fromARGB(255, 40, 78, 244),
                  fontFamily: "Quicksand",
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // Button to go the invoice page
              IconButton(
                color: const Color.fromARGB(255, 40, 78, 244),
                iconSize: screenWidth * 0.065,
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
