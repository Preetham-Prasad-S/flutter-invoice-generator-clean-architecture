import 'package:app_prototype/features/home/domain/entities/statistics_card.dart';
import 'package:app_prototype/features/home/presentation/widgets/custom_status_card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomStatisticsWidget extends StatelessWidget {
  const CustomStatisticsWidget({super.key});

  final List<StatisticsCard> cards = const [
    StatisticsCard(
      cardTitle: "Yearly Profit",
      profitAmount: "₹ 30,000",
      revenueAmount: "₹ 50,000",
      expensesAmount: "₹ 13,000",
    ),

    StatisticsCard(
      cardTitle: "Yearly Orders",
      profitAmount: "-150-",
      revenueAmount: "₹ 50,000",
      expensesAmount: "₹ 13,000",
    ),
    StatisticsCard(
      cardTitle: "Monthly Profit",
      profitAmount: "₹ 5,000",
      revenueAmount: "₹ 10,000",
      expensesAmount: "₹ 5,000",
    ),

    StatisticsCard(
      cardTitle: "Monthly Orders",
      profitAmount: "-10-",
      revenueAmount: "₹ 10,000",
      expensesAmount: "₹ 5,000",
    ),
    // Add more StatisticsCard as needed
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return CarouselSlider(
      items:
          cards
              .map(
                (card) => CustomStatusCardWidget(
                  cardTitle: card.cardTitle,
                  profitAmount: card.profitAmount,
                  revenueAmount: card.revenueAmount,
                  expensesAmount: card.expensesAmount,
                ),
              )
              .toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        disableCenter: true,
      ),
    );
  }
}
