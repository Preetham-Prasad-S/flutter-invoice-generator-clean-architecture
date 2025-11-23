import 'package:flutter/material.dart';

SnackBar showSnackBar({
  required String title,
  required Color color,
  required IconData icon,
}) {
  return SnackBar(
    dismissDirection: DismissDirection.horizontal,
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
    duration: Duration(seconds: 4),
    margin: EdgeInsets.only(bottom: 60, left: 20, right: 20),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(icon, color: Colors.white),
      ],
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}
