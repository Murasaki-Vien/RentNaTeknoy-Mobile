import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_na_teknoy/auth/sign_up/sign_up.dart';
import 'package:rent_na_teknoy/components/buttons/sign_in_btn.dart';
import 'package:rent_na_teknoy/components/text_fields/email_username.dart';
import 'package:rent_na_teknoy/components/text_fields/password.dart';
import 'package:rent_na_teknoy/logged_in_user/homepage/homepage.dart';


class SignIn extends StatefulWidget {

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //textControllers
  final _userEmailController = TextEditingController();

  final _userPsswrdController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _userEmailController.text.trim(), 
      password: _userPsswrdController.text.trim(),
    );
  }

  @override
  void dispose(){
    _userEmailController.dispose();
    _userPsswrdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor : Colors.white,
      body : SafeArea(
        child : SingleChildScrollView(
          child : Center(
            child: Padding(
              padding: const EdgeInsets.only(left : 34, right : 32),
              child: Column(
                children: <Widget>[
                  SizedBox(height : 169.h),
                  Row(
                    children: <Widget>[
                      Text(
                        "Sign In",
                        style : GoogleFonts.poppins(
                          fontSize : 25.sp,
                          fontWeight : FontWeight.w600,  
                        )
                      ),  
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sign in to continue using the app.",
                        style : GoogleFonts.poppins(
                          fontSize : 15.sp,
                          fontWeight : FontWeight.w300,  
                        )
                      ),
                    ],
                  ),
                  SizedBox(height : 11.h,),
                  Row(
                    children: [
                      Text(
                        "Email",
                        style : GoogleFonts.poppins(
                          fontSize : 20.sp,
                          fontWeight : FontWeight.w600,  
                        )
                      ),
                    ],
                  ),
                  SizedBox(height : 10.h,),
                  EmailUsernameField(
                    controller : _userEmailController,
                    hintText : 'Enter your email',
                  ),
                  SizedBox(height : 11.h,),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style : GoogleFonts.poppins(
                          fontSize : 20.sp,
                          fontWeight : FontWeight.w600,
                        ),
                      )
                  ],),
                  SizedBox(height : 10.h,),
                  //hides the password
                  
                  Password(
                    controller : _userPsswrdController,
                    hintText : "Enter your Password",
                  ),


                  Row(
                    mainAxisAlignment : MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style : GoogleFonts.poppins(
                          fontWeight : FontWeight.w600,
                          fontSize : 15.sp,
                          color : const Color(0xff9A9898) 
                        )
                      )
                    ],
                  ),

                  SizedBox(height : 20.h,),

                  //signInButton
                  GestureDetector(
                    onTap : () {
                      signIn();
                    },
                    child: const SignInBtn(),
                  ),

                  SizedBox(height : 42.h,),
                  Text(
                    'or Sign in with',
                    style : GoogleFonts.poppins(
                      fontSize : 15.sp,
                      fontWeight : FontWeight.w300, 
                    )
                  ),

                  SizedBox(height : 42.h,),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children: [
                      Container(
                        height : 49.h,
                        width : 96.w,
                        decoration : BoxDecoration(
                          borderRadius : BorderRadius.circular(20),
                          border : Border.all(
                            color : const Color(0xffA3A3A3),
                            width : 1.w, 
                          ) 
                        ),
                        child : Center(
                          child : Icon(
                            Icons.facebook, 
                            color : Colors.black,
                            size : 33.sp,
                          ) 
                          
                          ),
                      ),
                      SizedBox(width : 12.w,),
                      Container(
                        height : 49.h,
                        width : 96.w,
                        decoration : BoxDecoration(
                          borderRadius : BorderRadius.circular(20),
                          border : Border.all(
                            color : const Color(0xffA3A3A3),
                            width : 1.w, 
                          ) 
                        ),
                        child : Center(
                          child : SvgPicture.asset(
                            'assets/svg/google_logo.svg',
                            height : 33.h,
                            width : 33.w,
                          )
                          
                          ),
                      )
                    ],
                  ),

                  SizedBox(height : 61.h,),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style : GoogleFonts.poppins(
                          fontWeight : FontWeight.w300,
                          fontSize : 15.sp,  
                        ) ,
                      ),
                      GestureDetector(
                        onTap : () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                        },
                        child: Text(
                          " Register",
                          style : GoogleFonts.poppins(
                            fontWeight : FontWeight.w600,
                            fontSize : 15.sp,
                            color : const Color(0xff8A252C)  
                          ) ,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height : 42.h,),

                ],
              ),
            ),
          )
        )
      )
    );
  }
}