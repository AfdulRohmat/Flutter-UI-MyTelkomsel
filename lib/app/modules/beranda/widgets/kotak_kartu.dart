import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';

class KotakKartu extends StatelessWidget {
  const KotakKartu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 8),
      child: Container(
        height: 230,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/kotak-simpati.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // nomor dan logo simPATI
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '081234567890',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  Image.asset("assets/logos/simpati-logo.png")
                ],
              ),
              //
              SizedBox(height: 21),
              //
              // Sisa Pulsa
              TextDefault(
                text: 'Sisa Pulsa Anda',
                fontSize: 14,
                fontColor: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextDefault(
                    text: 'Rp. 34.000',
                    fontSize: 24,
                    fontColor: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: TextDefault(
                        text: 'Isi Pulsa',
                        fontSize: 14,
                        fontColor: kBlack,
                        fontWeight: FontWeight.bold,
                      ),
                      style: ElevatedButton.styleFrom(primary: kYellow))
                ],
              ),
              //
              SizedBox(height: 40),
              //
              // berlaku sampai
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  children: [
                    TextSpan(text: 'Berlaku Sampai, '),
                    TextSpan(
                      text: '19 April 2022',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 5),
              //
              // Telkomsel Poin
              Row(
                children: [
                  TextDefault(
                    text: 'Telkomsel POIN',
                    fontSize: 14,
                    fontColor: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 35,
                    height: 20,
                    decoration: BoxDecoration(
                      color: kYellow,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: TextDefault(
                          text: '172',
                          fontSize: 14,
                          fontColor: kBlack,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
