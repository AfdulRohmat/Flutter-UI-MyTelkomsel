import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/splash/views/splash_view.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashView();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(backgroundColor: kBackgroundColor),
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}
