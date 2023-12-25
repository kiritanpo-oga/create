import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled2/utils/app_layout.dart';
import 'package:untitled2/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const  HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('Hotel prince is ${hotel['price']}');
    }
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(17)),
       margin: EdgeInsets.only(right: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/${hotel['image']}"
                )

              )

            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
