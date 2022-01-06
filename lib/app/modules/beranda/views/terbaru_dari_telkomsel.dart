import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:get/get.dart';

class TerbaruDariTelkomsel extends StatelessWidget {
  const TerbaruDariTelkomsel({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final BerandaController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // color: Colors.amber,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --> judul
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextDefault(
                text: "Terbaru dari Telkomsel",
                fontSize: 16,
                fontColor: kBlack,
                fontWeight: FontWeight.bold,
              ),
              TextButton(
                onPressed: () {},
                child: TextDefault(
                  text: "Lihat Semua",
                  fontSize: 14,
                  fontColor: kRed,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          //  --> Card Terbaru
          Obx(() => Expanded(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => controller.listCard[index],
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12);
                  },
                  itemCount: controller.listCard.length))),
        ],
      ),
    );
  }
}
