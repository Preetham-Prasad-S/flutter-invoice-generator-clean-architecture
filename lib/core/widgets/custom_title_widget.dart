import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  final String titleText;
  final IconData buttonIcon;
  final VoidCallback? onPressed;

  const CustomTitleWidget({
    super.key,
    required this.titleText,
    required this.buttonIcon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.035,
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screenWidth * 0.6,
              child: Text(
                titleText,
                style: TextStyle(
                  color: AppColor.primaryAppColor,
                  fontFamily: "Quicksand",
                  fontSize: screenWidth * 0.065,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                buttonIcon,
                size: screenWidth * 0.08,
                color: AppColor.primaryAppColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
