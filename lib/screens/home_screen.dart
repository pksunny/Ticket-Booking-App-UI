// ignore_for_file: prefer_const_constructors

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/screens/hotels_screen.dart';
import 'package:ticket_booking_ui/screens/ticket_view.dart';
import 'package:ticket_booking_ui/utils/app_info_list.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Home Screen'),
      //   backgroundColor: Colors.greenAccent.shade200,
      // ),

      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Good Morning", style: Styles.headLineStyle3,),
                          Gap(3),
                          Text("Book Tickets", style: Styles.headLineStyle1),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            colorFilter: ColorFilter.mode(Colors.greenAccent, BlendMode.color),
                            image: AssetImage("assets/images/plane.png"),
                          )
                        ),
                      )
                    ],
                  ),
                  Gap(25),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70
                    ),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.greenAccent,),
                        Text("Search", style: Styles.headLineStyle4,)
                      ],
                    ),
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Upcoming Flights', style: Styles.headLineStyle2,),
                      InkWell(
                        onTap: (){
                          print('You Tapped View Upcoming Flights');
                        },
                        child: Text('View All', style: Styles.textStyle,)
                        )
                    ],
                  ),
                ],
              ),
            ),
            Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket, isColor: true,)).toList(),
              ),
            ),
            Gap(15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotels',
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                      onTap: () {
                        print('You Tapped View Hotels');
                      },
                      child: Text(
                        'View All',
                        style: Styles.textStyle,
                      ))
                ],
              ),
            ),
            Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((hotel) => HotelsScreen(hotel: hotel)).toList()
              )
              ),
          ],
        ),
      ),
    );
  }
}