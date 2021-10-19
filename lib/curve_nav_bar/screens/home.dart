import 'package:flutter/material.dart';

class NavHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Nav Home",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
