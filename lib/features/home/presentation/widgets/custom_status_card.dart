import 'package:flutter/material.dart';

class CustomStatusCard extends StatelessWidget {
  final String cardTitle;
  final String primaryCardText;
  final String secondaryCardText;
  final String tertinaryCardText;

  const CustomStatusCard({
    super.key,
    required this.cardTitle,
    required this.primaryCardText,
    required this.secondaryCardText,
    required this.tertinaryCardText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 3,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 45, 117, 143),
                ),
              ),

              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 121, 188, 212),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    primaryCardText,
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: "Quicksand",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                secondaryCardText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Quicksand",
                  color: const Color.fromARGB(255, 44, 147, 47),
                ),
              ),
              Text(
                tertinaryCardText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Quicksand",
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
