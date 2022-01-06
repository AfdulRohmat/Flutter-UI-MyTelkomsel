import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bantuan_controller.dart';

class BantuanView extends GetView<BantuanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BantuanView'),
         automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BantuanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
