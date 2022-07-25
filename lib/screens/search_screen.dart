import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/ReUseable%20Widget/button_widget.dart';
import 'package:ticket_booking_ui/ReUseable%20Widget/double_text_widget.dart';
import 'package:ticket_booking_ui/ReUseable%20Widget/icon_text_widget.dart';
import 'package:ticket_booking_ui/utils/app_layout.dart';
import 'package:ticket_booking_ui/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\n you looking for?',
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(15))),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
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
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white),
                    child: Center(child: Text('Airline Tickets')),
                  ),

                  /*
                    HOTELS 
                  */
                  Container(
                    width: size.width * 0.4,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent),
                    child: Center(child: Text('Hotels')),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: Colors.greenAccent),
            ),
          ),
          Gap(20),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: '  Departure'),
          Gap(20),
          AppIconText(icon: Icons.flight_land_rounded, text: '  Arrival'),
          Gap(20),
          AppButton(),
          Gap(20),
          AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View All'),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(5),
                    vertical: AppLayout.getHeight(5)),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/two.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% Discount on the early booking of this flight. Don't miss!",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.38,
                        height: AppLayout.getHeight(230),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -40,
                          child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(25)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 15, color: Colors.teal.shade300),
                            color: Colors.transparent),
                      ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width*0.38,
                    height: AppLayout.getHeight(160),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Colors.lightBlueAccent
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: TextSpan(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 18),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 18),
                              ),
                            ]
                          )
                          ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
