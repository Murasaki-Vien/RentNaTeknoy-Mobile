import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpBtn extends StatelessWidget {
  final dynamic boxColor;
  final dynamic textColor;
  final dynamic borderColor;
  final bool samePass;

  const SignUpBtn({
    super.key,
    this.boxColor,
    this.textColor,
    this.borderColor, 
    required this.samePass, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 53.h,
        decoration: BoxDecoration(
          color : boxColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: borderColor,
              width: 1.5.w,
            )),
        child: Center(
          child: Text( 
            (samePass) ? "Sign up" : "Unable to Sign up",
              style: GoogleFonts.poppins(
                color : textColor,
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
              )),
        ));
  }
}
