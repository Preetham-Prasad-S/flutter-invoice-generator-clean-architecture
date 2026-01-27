import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/home/presentation/screens/home_screen.dart';
import 'package:app_prototype/features/invoice/presentation/screens/invoice_bill_screen.dart';
import 'package:app_prototype/features/template/presentation/screens/upload_template_screen.dart';
import 'package:app_prototype/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class BaseScreen extends ConsumerWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(basePageIndex);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              children: [
                HomeScreen(),
                UploadTemplateScreen(),
                InvoiceBillScreen(),
                Scaffold(
                  body: Center(child: Text("Text")),
                  backgroundColor: Colors.white,
                ),
              ],
              index: index,
            ),
          ),
          _CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}

class _CustomBottomNavigationBar extends ConsumerWidget {
  _CustomBottomNavigationBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexRef = ref.read(basePageIndex.notifier);
    final index = ref.watch(basePageIndex);

    return DecoratedBox(
      decoration: BoxDecoration(color: AppColor.scaffoldBackgroundGradient2),
      child: SizedBox(
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(),
          elevation: 10,
          shadowColor: AppColor.cardShadowColor,
          margin: EdgeInsets.all(0),
          color: AppColor.cardColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _CustomBottomNavigationButton(
                text: "Home",
                icon: Icons.home,
                onPressed: () => indexRef.state = 0,
                currentIndex: 0,
                selectedIndex: index,
              ),
              _CustomBottomNavigationButton(
                text: "Invoice",
                icon: Ionicons.clipboard,
                onPressed: () => indexRef.state = 1,
                currentIndex: 1,
                selectedIndex: index,
              ),
              _CustomBottomNavigationButton(
                text: "Template",
                icon: Ionicons.document,
                onPressed: () => indexRef.state = 2,
                currentIndex: 2,
                selectedIndex: index,
              ),
              _CustomBottomNavigationButton(
                text: "History",
                icon: Ionicons.calendar_number,
                onPressed: () => indexRef.state = 3,
                currentIndex: 3,
                selectedIndex: index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomBottomNavigationButton extends StatelessWidget {
  final int currentIndex;
  final int selectedIndex;
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  const _CustomBottomNavigationButton({
    required this.currentIndex,
    required this.selectedIndex,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = currentIndex == selectedIndex;

    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size.fromHeight(50),
        backgroundColor:
            isSelected ? AppColor.primaryAppColor : Colors.transparent,
        foregroundColor: !isSelected ? AppColor.primaryAppColor : Colors.white,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 25),
          isSelected
              ? Text(
                " $text",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w600,
                ),
              )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
