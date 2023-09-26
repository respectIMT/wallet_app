// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.maxFinite,
            child: Text("day, month, year"),
          ),
          Expanded(
              child: Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          )),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.maxFinite,
            child: Text("Joriy balans"),
          ),
        ],
      ),
    );
  }
}
