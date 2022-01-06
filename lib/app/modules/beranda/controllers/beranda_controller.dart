import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/beranda_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/card_cari_voucher.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/card_pakai_linkaja.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/card_penawaran_khusus.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/card_tanggap_covid.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/card_terbaru_dari_telkom.dart';
import 'package:get/get.dart';

class BerandaController extends GetxController {
  /// ==>  List CardTerbaruDariTelkom
  List<CardTerbaruDariTelkom> listCard = [
    CardTerbaruDariTelkom(
      asset: 'omg.png',
      title: 'Internet OMG!',
      subtitle: "Bisa Yuoutube dan \nSosmed",
      colors: [Color(0xFFFF512F), Color(0xFFDD2476)],
    ),
    CardTerbaruDariTelkom(
        asset: 'ketengan.png',
        title: 'Undian \nKetengan',
        subtitle: "Beli kuota Ketengan",
        colors: [Color(0xFF4776E6), Color(0xFF8E54E9)])
  ].obs;

  /// ==> List CardTanggapCovid
  List<CardTanggapCovid> listTanggapCovid = [
    CardTanggapCovid(
      asset: 'diskon.png',
      title: 'Diskon Special 25% Untuk \nPelanggan Baru',
    ),
    CardTanggapCovid(
      asset: 'halodoc.png',
      title: 'Bebas Kuota Akses Layanan \nKesehatan',
    ),
  ].obs;

  /// ==> List CardPakaiLinkAja
  List<CardPakaiLinkAja> listPakaiLinkaja = [
    CardPakaiLinkAja(
      asset: 'pakai-linkaja-1.png',
      title: 'Bayar Serba Cepat',
    ),
    CardPakaiLinkAja(
      asset: 'pakai-linkaja-2.png',
      title: 'Cukup Snap QR',
    ),
    CardPakaiLinkAja(
      asset: 'pakai-linkaja-3.png',
      title: 'NO! Credit Card',
    ),
  ].obs;

  /// ==> List
  List<CardCariVoucher> listCariVoucher = [
    CardCariVoucher(
      asset: 'cari-voucher-1.png',
      title: 'Double Benefits from \nDOUBLE UNTUNG',
    ),
    CardCariVoucher(
      asset: 'cari-voucher-2.png',
      title: 'Join Undi-Undi Hepi 2020!',
    ),
  ].obs;

  /// ==> list CardPenawaranKhusus
  List<CardPenawaranKhusus> listCardPenawaranKhusus = [
    CardPenawaranKhusus(
      asset: 'penawaran-1.png',
      title: 'Terus Belajar dari Rumahmu \ndengan Ruangguru!',
    ),
    CardPenawaranKhusus(
      asset: 'penawaran-2.png',
      title: 'Belajar Kini Makin Mudah \ndengan Paket ilmupedia!',
    ),
  ].obs;


}
