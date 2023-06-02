import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailUsernameField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const EmailUsernameField({
      super.key,
      required this.hintText,
      required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 309.w,
      decoration: BoxDecoration(
          color: const Color(0xffE6E6E6),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xffB7B7B7),
            width: 1.2.w,
          )),
      child: Padding(
        padding: EdgeInsets.only(left: 14.w, right: 14.w),
        child: TextField(
          controller : controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: const Color(0xffCDCDCD)),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
