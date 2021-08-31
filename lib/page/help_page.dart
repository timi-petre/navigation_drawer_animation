import 'package:flutter/material.dart';
import 'package:navigation_drawer_animation/widget/menu_widget.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Help Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
