import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_na_teknoy/auth/sign_in/main_page.dart';
import 'package:rent_na_teknoy/auth/sign_in/sign_in.dart';
import 'package:rent_na_teknoy/auth/sign_up/sign_up.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  
  //checks user if signed in or out
  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseAuth.instance.authStateChanges().listen((User? user) {
  //     if (user == null) {
  //       print('User is currently signed out!');
  //     } else {
  //       print('User is signed in!');
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 133.h,
                  ),
                  SvgPicture.asset(
                    'assets/svg/app_logo.svg',
                    height: 243.h,
                    width: 330.w,
                  ),
                  SizedBox(
                    height: 63.h,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 29.w, bottom: 38.h, right: 34.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "RentNaTeknoy",
                                style: GoogleFonts.poppins(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Your renting need in one place",
                                style: GoogleFonts.poppins(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "Find a place to stay. The university's top application for you renting needs Rent now!",
                                style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5.h),
                              )
                            ],
                          ),
                          SizedBox(height: 21.h),
                          //Sign In Button
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage(
                                            destinationPage: SignIn(),
                                          )));
                            },
                            child: Container(
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
                            ),
                          ),
                          SizedBox(height: 9.h),
                          //Sign up Button
                          GestureDetector(
                            onTap: () {
                              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUp()));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage(
                                            destinationPage: SignUp(),
                                          )));
                            },
                            child: Container(
                                height: 53.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5.w,
                                    )),
                                child: Center(
                                  child: Text("Sign up",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.sp,
                                      )),
                                )),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )),
        ));
  }
}
