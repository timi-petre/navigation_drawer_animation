import 'package:flutter/material.dart';
import 'package:navigation_drawer_animation/widget/menu_widget.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Promo Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
