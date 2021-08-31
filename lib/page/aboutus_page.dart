import 'package:flutter/material.dart';
import 'package:navigation_drawer_animation/widget/menu_widget.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('About Us Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
