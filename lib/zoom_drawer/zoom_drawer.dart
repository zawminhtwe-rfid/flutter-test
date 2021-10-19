import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:test_codes/zoom_drawer/model/menu_item.dart';
import 'package:test_codes/zoom_drawer/page/aboutpage.dart';
import 'package:test_codes/zoom_drawer/page/helppage.dart';
import 'package:test_codes/zoom_drawer/page/menupage.dart';
import 'package:test_codes/zoom_drawer/page/notipage.dart';
import 'package:test_codes/zoom_drawer/page/paymentpage.dart';
import 'package:test_codes/zoom_drawer/page/promopage.dart';
import 'package:test_codes/zoom_drawer/page/ratepage.dart';

class ZoomHome extends StatefulWidget {
  @override
  _ZoomHomeState createState() => _ZoomHomeState();
}

class _ZoomHomeState extends State<ZoomHome> {
  MenuItem current_Item = MenuItems.payment;
  @override
  Widget build(BuildContext context) {
    Widget getScreen() {
      switch (current_Item) {
        case MenuItems.payment:
          return PaymentPage();
        case MenuItems.promos:
          return PromoPage();
        case MenuItems.noti:
          return NotiPage();
        case MenuItems.about:
          return AboutPage();
        case MenuItems.rate:
          return RatePage();
        case MenuItems.help:
          return HelpPage();
      }
    }

    return ZoomDrawer(
      style: DrawerStyle.Style1,
      borderRadius: 30,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width * 0.8,
      showShadow: true,
      backgroundColor: Colors.deepOrangeAccent,
      menuScreen: Builder(
          builder: (context) => MenuPage(
                current_Item: current_Item,
                onSelected_Item: (MenuItem value) {
                  setState(() {
                    current_Item = value;
                  });
                  ZoomDrawer.of(context).close();
                },
              )),
      mainScreen: getScreen(),
    );
  }
}
