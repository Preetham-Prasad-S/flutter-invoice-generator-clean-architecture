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
    return Column(
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  titleText,
                  style: const TextStyle(
                    color: AppColor.primaryAppColor,
                    fontFamily: "Quicksand",
                    fontSize: 26,
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
                  size: 30,
                  color: AppColor.primaryAppColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
