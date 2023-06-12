import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_na_teknoy/constants/constant.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: AlignmentDirectional.center,
        height: 43.h,
        width: 299.w,
        decoration: BoxDecoration(
            color: customWhite,
            borderRadius: BorderRadiusDirectional.circular(15)),
        child: Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search_rounded, color: customGrey),
                hintStyle: hintStyle,
                hintText: 'Search'),
          ),
        ));
  }
}
