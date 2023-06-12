import 'package:flutter/material.dart';
import 'package:rent_na_teknoy/constants/constant.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color : customGrey,
      child : Column(
        children: [
          Center(child: Text("USERPROFILE")),
        ],
      ),
    );
  }
}