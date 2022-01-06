import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';

class CardCariVoucher extends StatelessWidget {
  final String asset, title;
  const CardCariVoucher({Key? key, required this.asset, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
              child: Image.asset('assets/images/$asset')),
          Container(
            height: 60,
            width: 248,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 10),
              child: TextDefault(
                  text: title,
                  fontSize: 14,
                  fontColor: kBlack,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
