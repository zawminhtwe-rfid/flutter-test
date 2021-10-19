import 'package:flutter/material.dart';
import 'package:test_codes/zoom_drawer/model/menu_item.dart';

class MenuItems {
  static const payment = MenuItem("Payment", Icons.payment);
  static const promos = MenuItem("Promo", Icons.card_giftcard);
  static const noti = MenuItem("Notifications", Icons.notifications);
  static const help = MenuItem("Help", Icons.help);
  static const about = MenuItem("About Us", Icons.info_outline_rounded);
  static const rate = MenuItem("Rate Us", Icons.star_border_rounded);
  static const logout = MenuItem("Logout", Icons.logout);

  static const all = <MenuItem>[
    payment,
    promos,
    noti,
    help,
    about,
    rate,
    logout,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem current_Item;
  final ValueChanged<MenuItem> onSelected_Item;

  const MenuPage({
    @required this.current_Item,
    @required this.onSelected_Item,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildMenuItem(MenuItem item) {
      return ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selected: current_Item == item,
          minLeadingWidth: 20,
          selectedTileColor: Colors.black26,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () {
            onSelected_Item(item);
          },
        ),
      );
    }

    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,        
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [     
            Spacer(),       
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage("https://uifaces.co/our-content/donated/gPZwCbdS.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0,top: 10.0),
              child: Text("Mr.Hello",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade200),),
            ),
            SizedBox(height: 10,),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(
              flex: 2,
            ),
          ],
        )),
      ),
    );
  }
}
