import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var checkBoxChecked = false.obs;

  TextEditingController inputNumberPhoneCont = TextEditingController();

  @override
  void onClose() {
    inputNumberPhoneCont.dispose();
    super.onClose();
  }
}
