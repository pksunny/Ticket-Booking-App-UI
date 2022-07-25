// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.greenAccent),
      child: Center(
        child: Text('Find Tickets', style: Styles.headLineStyle2,)
      ),
    );
  }
}