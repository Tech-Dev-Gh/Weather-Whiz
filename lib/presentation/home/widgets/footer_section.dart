import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/date_constants.dart';
import 'package:weather_app/helpers/constants/icon_constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterItem(
              icon: IconConstants.partlySunnyIcon,
              temperature: "82,4°/86°F",
              day: DateTime.now()),
          FooterItem(
              icon: IconConstants.partlySunnyIcon,
              temperature: "82,4°/86°F",
              day: DateTime.now()),
          FooterItem(
              icon: IconConstants.partlySunnyIcon,
              temperature: "82,4°/8°F",
              day: DateTime.now()),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final IconData icon;
  final String temperature;
  final DateTime day;
  const FooterItem(
      {super.key,
      required this.icon,
      required this.temperature,
      required this.day});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
          color: ColorConstants.whiteColor,
        ),
        const SizedBox(height: 6),
        Text(
          temperature,
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          DateConstants.formatDay(day),
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
