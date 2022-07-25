// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FlightContainerSmall extends StatelessWidget {
  final bool? isColor;
  const FlightContainerSmall({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5,color: isColor == null ? Colors.white : Colors.teal)
      ),
    );
  }
}