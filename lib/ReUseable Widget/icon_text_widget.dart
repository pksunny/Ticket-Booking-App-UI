// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white70),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.greenAccent,
          ),
          Text(
            text,
            style: Styles.headLineStyle4,
          )
        ],
      ),
    );
  }
}
