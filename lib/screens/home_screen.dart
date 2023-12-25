import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled2/screens/hotel_screen.dart';
import 'package:untitled2/screens/ticket_view.dart';
import 'package:untitled2/utils/app_info_list.dart';
import 'package:untitled2/utils/app_layout.dart';
import 'package:untitled2/utils/app_styles.dart';
import 'package:untitled2/widgets/double_text_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:EdgeInsets.only(left: AppLayout.getHeight(20), right: AppLayout.getHeight(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                        height: AppLayout.getHeight(50),
                        width: AppLayout.getWidth(50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/image_1.png")))),
                  ],
                ),
                Gap(AppLayout.getWidth(25)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(12), vertical: AppLayout.getHeight(12)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const AppDoubleTextWidget(bigtext: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((SingleTicket) => TicketView(ticket: SingleTicket)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding:EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: const AppDoubleTextWidget(bigtext: "Hotels", smallText: "View all")
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: Row(
                children: hotelList.map((SinglHotel) => HotelScreen(hotel: SinglHotel)).toList()
              ),
          ),
        ],
      ),
    );
  }
}
