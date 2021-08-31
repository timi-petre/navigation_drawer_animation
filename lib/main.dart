import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:navigation_drawer_animation/model/menu_item.dart';
import 'package:navigation_drawer_animation/page/aboutus_page.dart';
import 'package:navigation_drawer_animation/page/help_page.dart';
import 'package:navigation_drawer_animation/page/menu_page.dart';
import 'package:navigation_drawer_animation/page/notification_page.dart';
import 'package:navigation_drawer_animation/page/payment_page.dart';
import 'package:navigation_drawer_animation/page/promos_page.dart';
import 'package:navigation_drawer_animation/page/rateus_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation Drawer Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Navigation Drawer Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuItem currentItem = MenuItems.payment;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
        borderRadius: 40,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width * 0.8,
        showShadow: true,
        backgroundColor: Colors.orangeAccent,
        style: DrawerStyle.Style1,
        menuScreen: Builder(
          builder: (context) => MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            },
          ),
        ),
        mainScreen: getScreen(),
      );
  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.promos:
        return PromoPage();
      case MenuItems.notifications:
        return NotificationPage();
      case MenuItems.help:
        return HelpPage();
      case MenuItems.aboutUs:
        return AboutUs();
      case MenuItems.rateUs:
      default:
        return RateUs();
    }
  }
}
