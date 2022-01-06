
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginIcon extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? textSosmed;
  final Color? textSosmedColor;
  const LoginIcon(
      {Key? key,
      required this.icon,
      required this.textSosmed,
      required this.iconColor,
      required this.textSosmedColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 157,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(width: 5),
            Text(
              textSosmed!,
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: textSosmedColor),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: Color(0xFF3B5998),
        ),
      ),
    );
  }
}