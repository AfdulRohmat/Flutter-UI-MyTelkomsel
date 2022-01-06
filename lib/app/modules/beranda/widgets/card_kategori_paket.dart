import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';

class CardKategoriPaket extends StatelessWidget {
  final String imageAsset, paket;
  const CardKategoriPaket(
      {Key? key, required this.imageAsset, required this.paket})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 92,
        width: 75,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/$imageAsset"),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextDefault(
                  text: paket,
                  fontSize: 14,
                  fontColor: kBlack,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
