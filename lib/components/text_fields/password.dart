//or use this if you want StatefullWidget
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_na_teknoy/constants/constant.dart';

class Password extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const Password({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _coverPass = true;
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
        padding: EdgeInsets.only(left: 14.w, top: 3.h, right: 14.w),
        child: TextField(
          controller : widget.controller,
          decoration : InputDecoration(
              border : InputBorder.none,
              hintStyle: hintStyle,
              hintText: widget.hintText,
              suffixIcon: GestureDetector(
                onTap : () {
                  setState(() {
                    _coverPass = !_coverPass;
                  });
                },
                child: Icon(
                  (_coverPass)
                      ? Icons.visibility_off_rounded
                      : Icons.remove_red_eye,
                  color: const Color(0xff9A9898))
              ),
                  
              // Icon(
              //     (coverPass)
              //         ? Icons.remove_red_eye
              //         : Icons.visibility_off_rounded,
              //     color: const Color(0xff9A9898))
            ),
            obscureText : _coverPass,
            // onChanged : (controller) {
            //   print('TEXTFIELD: $controller');
            // },
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Password extends StatelessWidget {
//   final String hintText;
//   //final bool coverPass;
//   const Password({
//     super.key,
//     required this.hintText,
//     //this.coverPass,
//   });

//   @override
//   Widget build(BuildContext context) {
//     bool coverPass = true;
//     return Container(
//       height: 53.h,
//       width: 309.w,
//       decoration: BoxDecoration(
//           color: const Color(0xffE6E6E6),
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(
//             color: const Color(0xffB7B7B7),
//             width: 1.2.w,
//           )),
//       child: Padding(
//         padding: EdgeInsets.only(left: 14.w, top: 3.h, right: 14.w),
//         child: TextField(
//           decoration: InputDecoration(
//               border: InputBorder.none,
//               hintStyle: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 15.sp,
//                   color: const Color(0xffCDCDCD)),
//               hintText: hintText,
//               suffixIcon: StatefulBuilder( //hidePass or showPass
//                 builder: (BuildContext context, hidePass) {
//                   return GestureDetector(
//                     onTap: () {
//                       hidePass(() {
//                         coverPass = !coverPass;
//                       },);
//                     },
//                     child: Icon(
//                     (coverPass)
//                         ? Icons.remove_red_eye
//                         : Icons.visibility_off_rounded,
//                     color: const Color(0xff9A9898)),
//                   );
                  
//                 },
//               ),
              
//               // Icon(
//               //     (coverPass)
//               //         ? Icons.remove_red_eye
//               //         : Icons.visibility_off_rounded,
//               //     color: const Color(0xff9A9898))
//             ),
//             obscureText : coverPass,
//         ),
//       ),
//     );
//   }
// }

