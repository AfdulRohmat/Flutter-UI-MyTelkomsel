import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/constant/color_constant.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/login/widgets/login_icond.dart';
import 'package:flutuer_ui_my_telkomsel/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              // image login
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 32),
                    child: Image.asset("assets/images/image-login.png"),
                  ),
                ],
              ),
              SizedBox(height: 46),
              //
              // text masukan nomor
              Text(
                'Silahkan masuk dengan nomor \ntelkomsel kamu',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kBlack,
                ),
                maxLines: 2,
              ),
              SizedBox(height: 24),
              //
              // input nomor HP
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Nomor HP',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: kBlack,
                  ),
                ),
              ),
              TextField(
                controller: controller.inputNumberPhoneCont,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Cth. 08129011xxxx',
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxChecked.value,
                      onChanged: (value) {
                        controller.checkBoxChecked.toggle();
                      },
                      activeColor: kRed,
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Saya Menyetujui ',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kBlack,
                        ),
                        children: [
                          TextSpan(
                            text: 'Syarat Ketentuan ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: kRed),
                          ),
                          TextSpan(
                            text: 'dan ',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kBlack,
                            ),
                          ),
                          TextSpan(
                            text: 'privasi ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kRed,
                            ),
                          ),
                          TextSpan(
                            text: 'Telkomsel',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              //
              // button lanjut
              MaterialButton(
                child: Text(
                  'LANJUT',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: kRed,
                height: 42,
                onPressed: () {
                  Get.toNamed(Routes.VERIFICATION);
                },
              ),
              //
              SizedBox(height: 16),
              //
              // Masuk menggunakan
              Column(
                children: [
                  Text(
                    'Atau masuk menggunakan',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: kGreyDark),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: LoginIcon(
                          icon: Icons.facebook_sharp,
                          textSosmed: 'Facebook',
                          iconColor: Color(0xFF3B5998),
                          textSosmedColor: Color(0xFF3B5998),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: LoginIcon(
                          icon: Icons.phone,
                          textSosmed: 'Phone',
                          iconColor: Color(0xFF1DA1F2),
                          textSosmedColor: Color(0xFF1DA1F2),
                        ),
                      )
                    ],
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
