import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InboxView'),
         automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InboxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
