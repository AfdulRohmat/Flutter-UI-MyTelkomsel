
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SayHaiAkun extends StatelessWidget {
  const SayHaiAkun({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 20, color: Colors.white),
                children: [
                  TextSpan(text: 'Hai, '),
                  TextSpan(
                    text: 'Muhammad',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ]),
          ),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/icons/round-qrcode.png"))),
        ],
      ),
    );
  }
}
