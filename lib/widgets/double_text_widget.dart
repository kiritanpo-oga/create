import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smallText;
  const AppDoubleTextWidget({super.key, required this.bigtext, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            if (kDebugMode) {
              print("You are tapped");
            }
          },
          child: Text(
            smallText,
            style: Styles.textStyle
                .copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
