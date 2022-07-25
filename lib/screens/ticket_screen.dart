// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/ReUseable%20Widget/top_navigation_bar.dart';
import 'package:ticket_booking_ui/screens/ticket_view.dart';
import 'package:ticket_booking_ui/utils/app_info_list.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            // ignore: prefer_const_literals_to_create_immutables
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Tickets',
                  style: Styles.headLineStyle1
                      .copyWith(fontSize: AppLayout.getWidth(15))),
              Gap(AppLayout.getHeight(20)),
              TopNavigationBar(firstText: 'Upcoming', secondText: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                // width: size.width * 0.44,
                // height: AppLayout.getHeight(500),
                // decoration: BoxDecoration(
                //     borderRadius:
                //         BorderRadius.circular(AppLayout.getHeight(20)),
                //     color: Colors.teal),
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
