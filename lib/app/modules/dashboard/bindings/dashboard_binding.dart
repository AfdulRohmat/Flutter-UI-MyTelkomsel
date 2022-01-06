import 'package:flutuer_ui_my_telkomsel/app/modules/akun/controllers/akun_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/bantuan/controllers/bantuan_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/inbox/controllers/inbox_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/riwayat/controllers/riwayat_controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<BerandaController>(() => BerandaController());
    Get.lazyPut<RiwayatController>(() => RiwayatController());
    Get.lazyPut<BantuanController>(() => BantuanController());
    Get.lazyPut<InboxController>(() => InboxController());
    Get.lazyPut<AkunController>(() => AkunController());
  }
}
