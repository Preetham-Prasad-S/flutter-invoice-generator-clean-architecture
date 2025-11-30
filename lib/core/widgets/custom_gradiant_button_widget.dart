import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomGradiantButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const CustomGradiantButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 29, 61, 201),

              const Color.fromARGB(255, 69, 100, 236),
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Ionicons.arrow_up),
              const SizedBox(width: 10),
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: AppColor.cardShadowColor,
            overlayColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: AppColor.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fixedSize: const Size(double.maxFinite, 50),
          ),
        ),
      ),
    );
  }
}
