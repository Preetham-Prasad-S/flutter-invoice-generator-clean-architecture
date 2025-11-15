import 'package:flutter/material.dart';

class CustomInvoiceCardCalendarDetails extends StatelessWidget {
  const CustomInvoiceCardCalendarDetails({
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Issued Date",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Quicksand",
              ),
            ),
            Text(
              "$month",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "Quicksand",
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Year",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Quicksand",
              ),
            ),
            Text(
              "$year",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "Quicksand",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
