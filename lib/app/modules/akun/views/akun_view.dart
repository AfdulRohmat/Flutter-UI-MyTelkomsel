import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AkunView'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'AkunView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
