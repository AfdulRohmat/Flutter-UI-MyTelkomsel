import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  TextEditingController verificationCont = TextEditingController();

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    verificationCont.dispose();
  }
}
