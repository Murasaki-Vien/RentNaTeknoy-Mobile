import 'package:flutter/material.dart';
import 'package:rent_na_teknoy/constants/constant.dart';

class UserStatsPage extends StatelessWidget {
  const UserStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color : customGrey,
      child : Column(
        children: [
          Center(child: Text("user STATS")),
        ],
      ),
    );
  }
}