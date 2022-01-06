import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GarisGrey extends StatelessWidget {
  const GarisGrey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: Get.width,
      color: Color(0xFFF1F2F6),
    );
  }
}
