import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/widgets/kotak_info.dart';
import 'package:get/get.dart';

class InformasiPaket extends StatelessWidget {
  const InformasiPaket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // info internet
          KotakInfo(
            judulInfo: 'Ínternet',
            valueInfo: '12.19',
            keteranganInfo: 'GB',
          ),
          //
          // info telepon
          KotakInfo(
            judulInfo: 'Telepon',
            valueInfo: '0',
            keteranganInfo: 'Min',
          ),
          //
          // info SMS
          KotakInfo(
            judulInfo: 'SMS',
            valueInfo: '23',
            keteranganInfo: 'SMS',
          ),
        ],
      ),
    );
  }
}
