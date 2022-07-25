// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
            onTap: () {
              print('You Tapped View Upcoming Flights');
            },
            child: Text(
              smallText,
              style: Styles.textStyle,
            ))
      ],
    );
  }
}
