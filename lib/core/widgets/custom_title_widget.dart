import 'package:app_prototype/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomTitleWidget extends StatelessWidget {
  final String topText;
  final String bottomText;

  const CustomTitleWidget({
    super.key,
    required this.topText,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topText,
              style: TextStyle(
                color: const Color.fromARGB(255, 40, 78, 244),
                fontFamily: "Quicksand",
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              bottomText,
              style: TextStyle(
                color: const Color.fromARGB(255, 40, 78, 244),
                fontFamily: "Quicksand",
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed:
              () => Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
          icon: Icon(
            Ionicons.open_outline,
            size: 30,
            color: const Color.fromARGB(255, 40, 78, 244),
          ),
        ),
      ],
    );
  }
}
