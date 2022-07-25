// ignore_for_file: prefer_const_constructors

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/utils/app_layout.dart';
import 'package:ticket_booking_ui/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getHeight(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/one.jpg")
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text('New York', style: Styles.headLineStyle4,),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(3), horizontal: AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Colors.teal
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.teal
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled, 
                            color: Colors.white,
                            size: 15,
                            ),
                        ),
                        Text('Premimum Status', style: Styles.headLineStyle4.copyWith(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),            
              Spacer(),
              Column(
                children: [
                  Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300)),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.teal.withOpacity(0.2)),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Container(  
                  // padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(25), horizontal: AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Colors.teal.shade400)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getHeight(20)),
                  
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Colors.teal,
                        size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("You\'v got a new award", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontSize: 20),),
                        Text("You\'v 37 flights this year", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(15)),
          Container(
            child: Column(
              children: [
                Text("190239", style: Styles.headLineStyle1.copyWith(fontSize: 35, fontWeight: FontWeight.bold),),
                Gap(AppLayout.getHeight(15)),
                Row(
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4,),
                    Spacer(),
                    Text("20 July 2022", style: Styles.headLineStyle4,),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  children: [
                    Text("23042", style: Styles.headLineStyle2.copyWith(fontSize: 15, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("Airline CO", style: Styles.headLineStyle2.copyWith(fontSize: 15, fontWeight: FontWeight.bold),),
                  ],
                ),
                Gap(AppLayout.getHeight(5)),
                Row(
                  children: [
                    Text("Miles", style: Styles.headLineStyle4,),
                    Spacer(),
                    Text("Received from", style: Styles.headLineStyle4,),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  children: [
                    Text("24", style: Styles.headLineStyle2.copyWith(fontSize: 15, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("McDonal's", style: Styles.headLineStyle2.copyWith(fontSize: 15, fontWeight: FontWeight.bold),),
                  ],
                ),
                Gap(AppLayout.getHeight(5)),
                Row(
                  children: [
                    Text("Miles", style: Styles.headLineStyle4,),
                    Spacer(),
                    Text("Received from", style: Styles.headLineStyle4,),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  children: [
                    Text("45 452", style: Styles.headLineStyle2.copyWith(fontSize: 15, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("Exuma", style: Styles.headLineStyle2.copyWith(fontSize: 15, fontWeight: FontWeight.bold),),
                  ],
                ),
                Gap(AppLayout.getHeight(5)),
                Row(
                  children: [
                    Text("Miles", style: Styles.headLineStyle4,),
                    Spacer(),
                    Text("Received from", style: Styles.headLineStyle4,),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Text("How to get more miles?", style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}