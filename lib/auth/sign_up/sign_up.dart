import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_na_teknoy/components/buttons/sign_up_btn.dart';
import 'package:rent_na_teknoy/components/text_fields/email_username.dart';
import 'package:rent_na_teknoy/components/text_fields/password.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _samePass = false;

  final _userName = TextEditingController();

  final _userEmailController = TextEditingController();

  final _userpassController = TextEditingController();

  final _checkUserPass = TextEditingController();

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _userEmailController.text.trim(), 
      password: _userpassController.text.trim()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
          padding: EdgeInsets.fromLTRB(34.w, 166.h, 32.w, 51.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              Row(
                children: [
                  Text('Enter your personal information',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
              SizedBox(height: 36.h),
              Row(
                children: [
                  Text('Username',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              SizedBox(height: 10.h),
              EmailUsernameField(
                  controller: _userName, hintText: "Enter your username"),
              SizedBox(height: 11.h),
              Row(
                children: [
                  Text('Email',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              SizedBox(height: 10.h),
              EmailUsernameField(
                  controller: _userEmailController,
                  hintText: "Enter your email"),
              SizedBox(height: 26.h),
              Row(
                children: [
                  Text('Password',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      )),
                  Icon(
                      (_samePass)
                          ? Icons.check_circle_outline
                          : Icons.cancel_presentation_outlined,
                      color: (_samePass) ? Colors.green[600] : Colors.red[800])
                ],
              ),
              SizedBox(height: 10.h),
              Password(
                controller: _userpassController,
                hintText: "Enter your password",
              ),
              SizedBox(height: 25.h),
              Row(
                children: [
                  Text('Confirm Password',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      )),
                  Icon(
                      (_samePass)
                          ? Icons.check_circle_outline
                          : Icons.cancel_presentation_outlined,
                      color: (_samePass) ? Colors.green[600] : Colors.red[800])
                ],
              ),
              SizedBox(height: 10.h),
              Password(
                controller: _checkUserPass,
                hintText: "Enter confirm password",
              ),
              SizedBox(height: 35.h),
              //SignUpButton
              GestureDetector(
                onTap: () {
                  signUp();
                },
                child: SignUpBtn(
                  samePass: _samePass,
                  boxColor: const Color(0xff8A252C),
                  textColor: Colors.white,
                  borderColor: const Color(0xff8A252C),
                ),
              ),
            ],
          ),
        ))));
  }

  //checks the Password and confirmpass runtime
  @override
  void initState() {
    super.initState();
    _userpassController.addListener(() {
      if (_userpassController.text == '' && _checkUserPass.text == '') {
        setState(() {
          _samePass = false;
        });
      } else {
        //print("_USERPass: ${_userpassController.text}");
        if (_userpassController.text == _checkUserPass.text) {
          setState(() {
            _samePass = true;
          });
        } else {
          setState(() {
            _samePass = false;
          });
        }
        _checkUserPass.addListener(() {
          // print("_checkUserPass: ${_checkUserPass.text}");
          if (_userpassController.text == '' && _checkUserPass.text == '') {
            setState(() {
              _samePass = false;
            });
          } else {
            if (_userpassController.text == _checkUserPass.text) {
              setState(() {
                _samePass = true;
              });
            } else {
              setState(() {
                _samePass = false;
              });
            }
          }

          // print("SAMEPass: $_samePass");
        });
      }
    });
  }

  @override
  void dispose() {
    _userpassController.dispose();
    _checkUserPass.dispose();
    _userEmailController.dispose();
    _userName.dispose();
    super.dispose();
  }
  // void iconChecker(){
  //   if(_samePass == true){
  //     Icon(Icons.check_circle_outline, color : Colors.green[600],);
  //   }else{
  //     Icon(Icons.cancel_presentation_outlined, color : Colors.red[800],);
  //   }
  // }
}
