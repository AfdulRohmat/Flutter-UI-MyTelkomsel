// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:get/get.dart';
import 'package:gradients/gradients.dart';

class CardTerbaruDariTelkom extends StatelessWidget {
  final String? asset, title, subtitle;

  ///  Jika tidak ingin gradient, passkan warna yang sama
  List<Color>? colors = [];

  CardTerbaruDariTelkom({
    Key? key,
    required this.asset,
    required this.title,
    required this.subtitle,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradientPainter(colors: colors!),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/$asset"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextDefault(
                  text: title,
                  fontSize: 18,
                  fontColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 6),
                TextDefault(
                    text: subtitle,
                    fontSize: 14,
                    fontColor: Colors.white,
                    fontWeight: FontWeight.normal),
              ],
            )
          ],
        ),
      ),
    );
  }
}
