import 'package:flutter/material.dart';

class CustomFinalInvoiceWidget extends StatelessWidget {
  const CustomFinalInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(255, 25, 114, 147),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Final Invoice Details",
                style: TextStyle(
                  color: const Color.fromARGB(255, 25, 114, 147),
                  fontFamily: "Quicksand",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: const Color.fromARGB(255, 25, 114, 147),
                  decorationStyle: TextDecorationStyle.solid,
                  decorationThickness: 1.8,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Company : Hotel New Saravanas",
                style: TextStyle(
                  color: const Color.fromARGB(255, 25, 114, 147),
                  fontFamily: "Quicksand",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Invoice Date : 21-08-2025",
                style: TextStyle(
                  color: const Color.fromARGB(255, 25, 114, 147),
                  fontFamily: "Quicksand",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Rate : 5,000",
                style: TextStyle(
                  color: const Color.fromARGB(255, 25, 114, 147),
                  fontFamily: "Quicksand",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Quantity : 05",
                style: TextStyle(
                  color: const Color.fromARGB(255, 25, 114, 147),
                  fontFamily: "Quicksand",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
