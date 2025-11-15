import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomStatusCard extends StatelessWidget {
  final String cardTitle;
  final String primaryCardText;
  final String secondaryCardTextOne;
  final String secondaryCardTextTwo;
  final String tertinaryCardTextOne;
  final String tertinaryCardTextTwo;

  const CustomStatusCard({
    super.key,
    required this.cardTitle,
    required this.primaryCardText,
    required this.secondaryCardTextOne,
    required this.secondaryCardTextTwo,
    required this.tertinaryCardTextTwo,
    required this.tertinaryCardTextOne,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        shadowColor: Colors.black26,
        color: const Color.fromARGB(171, 255, 255, 255),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$cardTitle Review",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Ionicons.ellipsis_horizontal),
                  ),
                ],
              ),

              Text(
                "Total $cardTitle",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: "Quicksand",
                  color: Colors.black38,
                ),
              ),
              Row(
                children: [
                  Text(
                    primaryCardText,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      fontFamily: "Quicksand",
                      color: const Color.fromARGB(255, 40, 78, 244),
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 0,
                color: const Color.fromARGB(255, 234, 237, 251),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 4,
                          ),
                          child: Icon(
                            Ionicons.chevron_up_outline,
                            color: Colors.green.shade800,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            secondaryCardTextOne,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Quicksand",
                              color: Colors.black54,
                            ),
                          ),

                          Text(
                            secondaryCardTextTwo,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Quicksand",
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 4,
                          ),
                          child: Icon(
                            Ionicons.chevron_down_outline,
                            color: Colors.red.shade600,
                          ),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tertinaryCardTextOne,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Quicksand",
                              color: Colors.black54,
                            ),
                          ),

                          Text(
                            tertinaryCardTextTwo,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Quicksand",
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
