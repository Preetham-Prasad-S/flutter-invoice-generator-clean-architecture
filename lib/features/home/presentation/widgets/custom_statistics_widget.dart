import 'package:app_prototype/features/home/presentation/widgets/custom_status_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomStatisticsWidget extends StatelessWidget {
  const CustomStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        CustomStatusCard(
          cardTitle: "Yearly Profit",
          primaryCardText: "₹ 30,000",
          secondaryCardTextOne: "Revenue",
          secondaryCardTextTwo: "₹ 50,000",
          tertinaryCardTextOne: "Expenses",
          tertinaryCardTextTwo: "₹ 20,000",
        ),
        CustomStatusCard(
          cardTitle: "Monthly Profit",
          primaryCardText: "₹ 5,000",
          secondaryCardTextTwo: "₹ 6,000",
          tertinaryCardTextTwo: "₹ 1,000",
          secondaryCardTextOne: "Revenue",
          tertinaryCardTextOne: "Expenses",
        ),
        CustomStatusCard(
          cardTitle: "Monthly Profit",
          primaryCardText: "₹ 5,000",
          secondaryCardTextTwo: "₹ 6,000",
          tertinaryCardTextTwo: "₹ 1,000",
          secondaryCardTextOne: "Revenue",
          tertinaryCardTextOne: "Expenses",
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 250,
        enlargeCenterPage: true,
        disableCenter: true,
      ),
    );
  }
}
