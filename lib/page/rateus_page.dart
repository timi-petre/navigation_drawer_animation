import 'package:flutter/material.dart';
import 'package:navigation_drawer_animation/widget/menu_widget.dart';

class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Rate Us Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
