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
          cardTitle: "Total Yearly Profit",
          primaryCardText: "30,000",
          secondaryCardText: "Revenue :- 50,000",
          tertinaryCardText: "Expenses :- 20,000",
        ),
        CustomStatusCard(
          cardTitle: "Total Monthly Profit",
          primaryCardText: "5,000",
          secondaryCardText: "Revenue :- 6,000",
          tertinaryCardText: "Expenses :- 1,000",
        ),
        CustomStatusCard(
          cardTitle: "Total Number of Orders",
          primaryCardText: "50",
          secondaryCardText: "Last Year :- 56",
          tertinaryCardText: "Difference :- -6",
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 210,
        enlargeCenterPage: true,
        disableCenter: true,
      ),
    );
  }
}
