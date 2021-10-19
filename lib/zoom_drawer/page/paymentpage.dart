import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Page"),
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              ZoomDrawer.of(context).toggle();
            },
            icon: Icon(Icons.menu)),
      ),
    );
  }
}
