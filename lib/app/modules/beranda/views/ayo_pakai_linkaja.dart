import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:get/get.dart';

class AyoPakaiLinkAja extends StatelessWidget {
  final BerandaController controller;

  const AyoPakaiLinkAja({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 225,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDefault(
            text: 'AYO! Pake LinkAja!',
            fontSize: 16,
            fontColor: kBlack,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 8),
          TextDefault(
            text:
                'Pakai LinkAja untuk beli pulsa, beli paket data dan \nbayar tagihan lebih mudah.',
            fontSize: 14,
            fontColor: kBlack,
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 20),
          Obx(
            () => Expanded(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => controller.listPakaiLinkaja[i],
                  separatorBuilder: (context, i) => SizedBox(width: 12),
                  itemCount: controller.listPakaiLinkaja.length),
            ),
          ),
        ],
      ),
    );
  }
}
