import 'package:flutter/material.dart';
import 'package:navigation_drawer_animation/model/menu_item.dart';

class MenuItems {
  static const payment = MenuItem('Payment', Icons.payment);
  static const promos = MenuItem('Promo', Icons.card_giftcard);
  static const notifications =
      MenuItem('Notification', Icons.notification_add_outlined);
  static const help = MenuItem('Help', Icons.help);
  static const aboutUs = MenuItem('About Us', Icons.info_outline);
  static const rateUs = MenuItem('Rate Us', Icons.star_border);

  static const all = <MenuItem>[
    payment,
    promos,
    notifications,
    help,
    aboutUs,
    rateUs,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
            selectedTileColor: Colors.black26,
            selected: currentItem == item,
            minLeadingWidth: 20,
            leading: Icon(item.icon),
            title: Text(item.title),
            onTap: () => onSelectedItem(item)),
      );
}
