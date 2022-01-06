import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/akun/views/akun_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/bantuan/views/bantuan_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/beranda_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/dashboard/views/bottom_navigation_telkomsel_app.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/inbox/views/inbox_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/riwayat/views/riwayat_view.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<DashboardController>();

    return GetBuilder<DashboardController>(
      builder: (controller) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: kRed,
            ),
            child: Scaffold(
              body: IndexedStack(
                index: controller.tabIndex.value,
                children: [
                  BerandaView(),
                  RiwayatView(),
                  BantuanView(),
                  InboxView(),
                  AkunView(),
                ],
              ),
              bottomNavigationBar: BottomNavigationTelkomselApp(),
            ));
      },
    );
  }
}
