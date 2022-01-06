import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/card_kategori_paket.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:get/get.dart';

class KategoriPaket extends StatelessWidget {
  const KategoriPaket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDefault(
            text: 'Kategori Paket',
            fontSize: 16,
            fontColor: kBlack,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 8),
          //
          // --> KATEGORI PAKET ATAS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardKategoriPaket(
                imageAsset: "internet.png",
                paket: "Internet",
              ),
              CardKategoriPaket(
                imageAsset: "telepon.png",
                paket: "Telepon",
              ),
              CardKategoriPaket(
                imageAsset: "sms.png",
                paket: "SMS",
              ),
              CardKategoriPaket(
                imageAsset: "roaming.png",
                paket: "Roaming",
              ),
            ],
          ),
          SizedBox(height: 8),
          //
          // --> KATEGORI PAKET BAWAH
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardKategoriPaket(
                imageAsset: "hiburan.png",
                paket: "Hiburan",
              ),
              CardKategoriPaket(
                imageAsset: "unggulan.png",
                paket: "Unggulan",
              ),
              CardKategoriPaket(
                imageAsset: "tersimpan.png",
                paket: "Tersimpan",
              ),
              CardKategoriPaket(
                imageAsset: "riwayat.png",
                paket: "Riwayat",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
