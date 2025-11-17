import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomStatusCardWidget extends StatelessWidget {
  final String cardTitle;
  final String profitAmount;
  final String revenueAmount;
  final String expensesAmount;

  const CustomStatusCardWidget({
    super.key,
    required this.cardTitle,
    required this.profitAmount,
    required this.revenueAmount,
    required this.expensesAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        shadowColor: Colors.black26,
        color: const Color.fromARGB(171, 255, 255, 255),
        elevation: 10,
        child: CustomStatusCardContentWidget(
          cardTitle: cardTitle,
          profitAmount: profitAmount,
          revenueAmount: revenueAmount,
          expensesAmount: expensesAmount,
        ),
      ),
    );
  }
}

class CustomStatusCardContentWidget extends StatelessWidget {
  const CustomStatusCardContentWidget({
    super.key,
    required this.cardTitle,
    required this.profitAmount,
    required this.revenueAmount,
    required this.expensesAmount,
  });

  final String cardTitle;
  final String profitAmount;
  final String revenueAmount;
  final String expensesAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomStatusCardContentTitleWidget(cardTitle: cardTitle),

          ProfitAmountWidget(profitAmount: profitAmount, cardTitle: cardTitle),
          AccountsWidget(
            revenueAmount: revenueAmount,
            expensesAmount: expensesAmount,
          ),
        ],
      ),
    );
  }
}

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({
    super.key,
    required this.revenueAmount,
    required this.expensesAmount,
  });

  final String revenueAmount;
  final String expensesAmount;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                  "Revenue",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Quicksand",
                    color: Colors.black54,
                  ),
                ),

                Text(
                  revenueAmount,
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
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                  "Expenses",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Quicksand",
                    color: Colors.black54,
                  ),
                ),

                Text(
                  expensesAmount,
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
    );
  }
}

class ProfitAmountWidget extends StatelessWidget {
  const ProfitAmountWidget({
    super.key,
    required this.profitAmount,
    required this.cardTitle,
  });

  final String profitAmount;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              profitAmount,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                fontFamily: "Quicksand",
                color: const Color.fromARGB(255, 40, 78, 244),
              ),
            ),
            Row(
              children: [
                Icon(
                  Ionicons.trending_up_outline,
                  size: 20,

                  color: AppColor.primaryAppColor,
                ),
                SizedBox(width: 10),
                Text(
                  "+15%",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryAppColor,
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

class CustomStatusCardContentTitleWidget extends StatelessWidget {
  const CustomStatusCardContentTitleWidget({
    super.key,
    required this.cardTitle,
  });

  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        IconButton(onPressed: () {}, icon: Icon(Ionicons.ellipsis_horizontal)),
      ],
    );
  }
}
