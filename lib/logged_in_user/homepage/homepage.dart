import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rent_na_teknoy/landing_page/landing_page.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
            child: Column(
            children: [
              Text(
                'Welcome User: ${user.email}',
              ),
              MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                },
                color : Colors.red,
                child : const Text('Signd out'),

              )
            ],
          ),
        )
      )
    );
  }
}
