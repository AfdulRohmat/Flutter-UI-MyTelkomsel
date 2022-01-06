import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/sayhai_akun.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/ayo_pakai_linkaja.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/penawaran_khusus.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/tanggap_covid.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/terbaru_dari_telkomsel.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/kategori_paket.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/garis_grey.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/kotak_kartu.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:get/get.dart';
import '../controllers/beranda_controller.dart';
import 'cari_voucher.dart';
import 'informasi_paket.dart';

class BerandaView extends GetView<BerandaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          // ==> BG MERAH MELENGKUNG
          Stack(
            children: [
              // design merah melengkung bg
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  height: 200,
                  color: kRed,
                ),
              ),
              //
              // ==> NAMA AKUN DAN QR CODE

              // ==> KOTAK KARTU SIMPATI
              Column(
                children: [
                  SayHaiAkun(),
                  KotakKartu(),
                ],
              ),
            ],
          ),
          //
          SizedBox(height: 16),
          //
          // ==> INFORMASI PAKET
          InformasiPaket(),
          //
          SizedBox(height: 23),
          //
          // ==> GarisGrey
          GarisGrey(),
          //
          SizedBox(height: 20),
          //
          // ==> KATEGORI PAKET
          KategoriPaket(),
          //
          SizedBox(height: 32),
          //
          // ==> TERBARU DARI TELKOMSEL
          TerbaruDariTelkomsel(controller: controller),
          //
          SizedBox(height: 32),
          //
          // ==> TANGGAP COVID 19
          TanggapCovid(controller: controller),
          //
          SizedBox(height: 32),
          //
          // ==> AYO PAKAI LINKAJA
          AyoPakaiLinkAja(controller: controller),
          //
          SizedBox(height: 32),
          //
          // ==> CARI VOUCER
          CariVoucher(controller: controller),
          //
          SizedBox(height: 32),
          //
          // ==> PENAWARAN KHUSUS
          PenawaranKhusus(controller: controller),

          SizedBox(height: 32),
          //
        ],
      ),
    );
  }
}
