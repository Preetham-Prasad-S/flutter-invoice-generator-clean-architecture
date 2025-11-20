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
            Icon(Ionicons.calendar, color: Colors.black38, size: 18),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Issued Date",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "$month",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 40, 78, 244),
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
            Icon(Ionicons.calendar_clear, color: Colors.black38, size: 18),
            SizedBox(width: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Year",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  "$year",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 40, 78, 244),
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
