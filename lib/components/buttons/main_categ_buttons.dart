import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_na_teknoy/constants/constant.dart';

class MainCategoryButtons extends StatefulWidget {
  final String category;
  final int categIndex;
  final bool highlightIndex;
  const MainCategoryButtons({
    super.key,
    required this.category,
    required this.categIndex,
    required this.highlightIndex,
  });

  @override
  State<MainCategoryButtons> createState() => _MainCategoryButtonsState();
}

class _MainCategoryButtonsState extends State<MainCategoryButtons> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.w),
      child: GestureDetector(
        onTap: (){
          setState(() {
            print(widget.category);
            print(widget.categIndex);
            //customGrey = customGrey == customMaroon ? customGrey : customMaroon;
          });
        },
        child: AnimatedContainer(
          duration : const Duration(milliseconds: 500),
          width: 78.w,
          height: 31.h,
          decoration: BoxDecoration(
            color : (widget.highlightIndex) ? customMaroon : customGrey,
            borderRadius : BorderRadius.circular(10)
          ),
          child: Center(
              child: Text(
            widget.category,
            style:
                GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500),
          )),
        ),
      ),
    );
  }
}
