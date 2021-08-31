import 'package:flutter/material.dart';
import 'package:navigation_drawer_animation/widget/menu_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Notification Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
