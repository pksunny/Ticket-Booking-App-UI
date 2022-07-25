// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/utils/app_layout.dart';

import '../utils/app_styles.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelsScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {

    print('Hotel Price is ${hotel['price']}');
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(320),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.greenAccent,
            blurRadius: 5,
            spreadRadius: 2,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/${hotel['image']}"),
                
              )
            ),
          ),
          Gap(10),
          Text(hotel['place'], style: Styles.headLineStyle2.copyWith(color: Colors.white),),
          Gap(5),
          Text(hotel['destination'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          Gap(8),
          Text('\$${hotel['price']}/Night', style: Styles.headLineStyle1.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}