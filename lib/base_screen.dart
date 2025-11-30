import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
            children: [
              Center(child: Text("1safsdfasdf")),
              Text("2"),
              Text("3"),
            ],
            index: index,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                index++;
                index = index % 3;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
