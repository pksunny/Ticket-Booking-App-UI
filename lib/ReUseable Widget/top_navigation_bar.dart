// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TopNavigationBar extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TopNavigationBar({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            /*
                    AIRLINE TICKETS 
                  */
            Container(
              width: size.width * 0.4,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(child: Text(firstText, style: Styles.headLineStyle3,)),
            ),

            /*
                    HOTELS 
                  */
            Container(
              width: size.width * 0.4,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
              child: Center(child: Text(secondText, style: Styles.headLineStyle3,)),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: Colors.greenAccent),
      ),
    );
  }
}
