import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomInvoiceCardCalendarDetailsWidget extends StatelessWidget {
  const CustomInvoiceCardCalendarDetailsWidget({
    super.key,
    required this.month,
    required this.year,
  });

  final String month;
  final String year;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Icon(Ionicons.calendar, color: AppColor.fadedBlack, size: 18),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Issued Date",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColor.fadedBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "$month",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColor.primaryAppColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(Ionicons.calendar_clear, color: AppColor.fadedBlack, size: 18),
            SizedBox(width: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Year",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColor.fadedBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "$year",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColor.primaryAppColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
