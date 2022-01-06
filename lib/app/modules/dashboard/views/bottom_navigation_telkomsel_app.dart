import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class BottomNavigationTelkomselApp extends StatelessWidget {
  const BottomNavigationTelkomselApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<DashboardController>();

    return Obx(() => Container(
          height: 60,
          // color: Colors.amber,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: controller.tabIndex.value,
            elevation: 10,
            selectedItemColor: kRed,
            unselectedItemColor: kGreyDark,
            onTap: (value) {
              controller.setTabIndex(value);
            },
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              // Beranda
              _bottomNavigationBarItem(
                'Beranda',
                'beranda-outlined.png',
                'beranda-colored.png',
              ),

              // Riwayat
              _bottomNavigationBarItem(
                'Riwayat',
                'riwayat-outlined.png',
                'riwayat-colored.png',
              ),

              // Bantuan
              _bottomNavigationBarItem(
                'Bantuan',
                'bantuan-outlined.png',
                'bantuan-colored.png',
              ),

              // Inbox
              _bottomNavigationBarItem(
                'Inbox',
                'inbox-outlined.png',
                'inbox-colored.png',
              ),

              // Akun
              _bottomNavigationBarItem(
                'Akun',
                'akun-outlined.png',
                'akun-colored.png',
              ),
            ],
          ),
        ));
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String label, String iconOutlined, String iconColored) {
    return BottomNavigationBarItem(
      label: label,
      icon: Container(
        padding: EdgeInsets.only(bottom: 4),
        child: Image.asset(
          'assets/icons/bottomNav/$iconOutlined',
        ),
      ),
      activeIcon: Container(
        padding: EdgeInsets.only(bottom: 4),
        child: Image.asset(
          'assets/icons/bottomNav/$iconColored',
        ),
      ),
    );
  }
}
