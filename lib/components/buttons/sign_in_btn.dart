import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInBtn extends StatelessWidget {
  const SignInBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 305.w,
      decoration: BoxDecoration(
        color: const Color(0xff8A252C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
        "Sign in",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      )),
    );
  }
}
