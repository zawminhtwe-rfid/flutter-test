import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_codes/curve_nav_bar/curve_navbar.dart';
import 'package:test_codes/zoom_drawer/zoom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.star, color: Colors.orange),
              title: Text('Curved Navigation Bar'),
              subtitle: Text('All your favourite widgets'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CurveNavBar()));
                print("click curve nav bar");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star, color: Colors.blue),
              title: Text('Flutter Zoom Drawer'),
              subtitle: Text('All your favourite widgets'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ZoomHome()));
                print("click zoom drawer");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star, color: Colors.blue),
              title: Text('Flutter Test'),
              subtitle: Text('All your favourite widgets'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CurveNavBar()));
                print("click zoom drawer");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star, color: Colors.blue),
              title: Text('Flutter Test'),
              subtitle: Text('All your favourite widgets'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CurveNavBar()));
                print("click zoom drawer");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star, color: Colors.blue),
              title: Text('Master Card'),
              subtitle: Text('All your favourite widgets'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CurveNavBar()));
                print("click zoom drawer");
              },
            ),
          ),
        ],
      ),
    );
  }
}
