import 'package:get/get.dart';

import '../controllers/beranda_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BerandaController>(
      () => BerandaController(),
    );
  }
}
