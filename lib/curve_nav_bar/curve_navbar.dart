import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_codes/curve_nav_bar/screens/favorite.dart';
import 'package:test_codes/curve_nav_bar/screens/home.dart';
import 'package:test_codes/curve_nav_bar/screens/person.dart';
import 'package:test_codes/curve_nav_bar/screens/search.dart';
import 'package:test_codes/curve_nav_bar/screens/setting.dart';

class CurveNavBar extends StatefulWidget {
  @override
  _CurveNavBarState createState() => _CurveNavBarState();
}

class _CurveNavBarState extends State<CurveNavBar> {
  // start index declare
  int index = 2;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = [
    NavSearch(),
    NavFavorite(),
    NavHome(),
    NavSetting(),
    NavPerson(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      extendBody: true,
      appBar: AppBar(
        title: Text("Curve Navigation Bar"),
        elevation: 0,
        centerTitle: true,
      ),
      body: screens[index],
      // body: Center(
      //   child: Text(
      //     '$index',
      //     style: TextStyle(
      //         fontSize: 120, color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      // ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          key: navigationKey,
          backgroundColor: Colors.transparent,
          // buttonBackgroundColor: Colors.red,
          color: Colors.purple[700],
          height: 60,
          animationCurve: Curves.easeInOut,
          // animationDuration: Duration(microseconds: 300),
          index: index,
          items: [
            Icon(Icons.search, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.settings, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }
}
