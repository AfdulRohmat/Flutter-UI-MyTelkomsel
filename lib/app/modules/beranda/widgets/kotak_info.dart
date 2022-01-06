
import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';

class KotakInfo extends StatelessWidget {
  final String? judulInfo, valueInfo, keteranganInfo;

  const KotakInfo(
      {Key? key,
      required this.judulInfo,
      required this.valueInfo,
      required this.keteranganInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 12,
                offset: Offset(0, 2))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextDefault(
              text: judulInfo,
              fontSize: 13,
              fontColor: Color(0xFF1E272E),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                TextDefault(
                  text: valueInfo,
                  fontSize: 24,
                  fontColor: kRed,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(width: 4),
                TextDefault(
                  text: keteranganInfo,
                  fontSize: 14,
                  fontColor: kGreyDark,
                  fontWeight: FontWeight.normal,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
