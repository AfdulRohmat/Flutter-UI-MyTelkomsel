import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/widgets/text_default.dart';
import 'package:flutuer_ui_my_telkomsel/app/routes/app_pages.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kBlack,
            ),
            onPressed: () {
              Get.toNamed(Routes.LOGIN);
            },
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              // image verification
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset("assets/images/image-verify.png"),
                  ),
                ],
              ),
              //
              SizedBox(height: 32),
              //
              // Masukan kode uni
              TextDefault(
                  text: 'Masukan kode unik yang kami kirim',
                  fontSize: 18,
                  fontColor: kBlack,
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              TextDefault(
                text:
                    'Silahkan periksa SMS kamu dan masukan kode unik \nyang kami kirimkan ke 081290112333',
                fontSize: 14,
                fontColor: kBlack,
                fontWeight: FontWeight.normal,
              ),
              //
              SizedBox(height: 24),
              //
              // Kode Unik
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Kode Unik',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: kBlack,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Cth. q5Tsgh***',
                ),
              ),
              //
              SizedBox(height: 16),
              //
              // Tidak menerima SMS ?
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'Tidak Menerima SMS ? ',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kBlack,
                    ),
                    children: [
                      TextSpan(
                        text: 'Kirim ulang',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kRed),
                      ),
                    ],
                  ),
                ),
              ),
              //
              SizedBox(height: 40),
              //
              // Button to Home (development Only)
              MaterialButton(
                child: Text(
                  'Go to Home (Development Only)',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: kRed,
                height: 42,
                onPressed: () {
                  Get.offNamed(Routes.DASHBOARD);
                },
              ),
            ],
          ),
        )));
  }
}
