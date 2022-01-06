
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDefault extends StatelessWidget {
  final String? text;
  final FontWeight fontWeight;
  final double? fontSize;
  final Color? fontColor;
  const TextDefault(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.fontColor,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.roboto(
        fontSize: fontSize!,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}