
import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:get/get.dart';

class CariVoucher extends StatelessWidget {
  final BerandaController controller;

  const CariVoucher({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 228,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -> judul
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextDefault(
                text: 'Cari Voucher, Yuk!',
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
          //
          // -> Card tanggap covid
          Obx(() => Expanded(
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        controller.listCariVoucher[index],
                    separatorBuilder: (context, index) => SizedBox(width: 12),
                    itemCount: controller.listCariVoucher.length),
              ))
        ],
      ),
    );
  }
}
