import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rent_na_teknoy/auth/verify_email_page.dart';
// import 'package:rent_na_teknoy/auth/sign_in/sign_in.dart';
// import 'package:rent_na_teknoy/landing_page/landing_page.dart';
//import 'package:rent_na_teknoy/logged_in_user/homepage/homepage.dart';

class MainPage extends StatelessWidget {
  final Widget destinationPage;
  const MainPage({
    super.key,
    required this.destinationPage
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, userSnapshot){
            if (userSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }else if (userSnapshot.hasData) {
              print('User Found');
              return VerifyEmailPage();
            } else {
              print('User NOT FOUND');
              return destinationPage;
            }
          }),
    );
  }
}
 