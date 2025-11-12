import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color: Colors.white,
        elevation: 10,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: const Color.fromARGB(255, 25, 114, 147),
                iconSize: 28,
                onPressed: () {},
                icon: Icon(Icons.account_circle_outlined),
              ),
              Flexible(
                child: Text(
                  "Company Invoice Generator",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 25, 114, 147),
                    fontFamily: "Quicksand",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              IconButton(
                color: const Color.fromARGB(255, 25, 114, 147),
                iconSize: 28,
                onPressed: () {},
                icon: Icon(Icons.logout_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
