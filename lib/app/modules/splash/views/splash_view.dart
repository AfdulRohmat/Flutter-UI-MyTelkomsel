import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: kRed),
      home: Scaffold(
        body: Center(
            child: Container(
          height: Get.width * 0.5,
          width: Get.width * 0.5,
          child: Image.asset("assets/logos/splashscreen-logo.png"),
        )),
      ),
    );
  }
}
