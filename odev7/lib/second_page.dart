import 'dart:async';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const PageRoute = "second_page";
  String? value = "";
  String? value2 = "";
  SecondPage({super.key, required this.value, required this.value2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value!,
              style: TextStyle(fontSize: 20),
            ),
            Text(value2!, style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
