import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/date_constants.dart';
import 'package:weather_app/helpers/constants/image_constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ImageConstants.search),
        Text(
          DateConstants.getCurrentTime,
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Image.asset(ImageConstants.list)
      ],
    );
  }
}
