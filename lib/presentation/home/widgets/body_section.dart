import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/icon_constants.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          IconConstants.sunnyIcon,
          size: 80,
          color: ColorConstants.sunColor,
        ),
        const SizedBox(height: 18),
        RichText(
            text: const TextSpan(
                text: "82,4",
                style: TextStyle(
                  color: ColorConstants.whiteColor,
                  fontSize: 56,
                  fontFamily: "SF Pro",
                  fontWeight: FontWeight.w700,
                ),
                children: [
              TextSpan(
                  text: "°F",
                  style: TextStyle(
                    fontFamily: "",
                    fontWeight: FontWeight.w200,
                  ))
            ])),
        const SizedBox(height: 18),
        const Text(
          "It's a sunny day. \nPerfect for a shopping trip,",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              IconConstants.windy,
              size: 22,
              color: ColorConstants.whiteColor,
            ),
            const SizedBox(width: 8),
            Text(
              "3 mph%",
              style: TextStyle(
                color: ColorConstants.whiteOpacity9Color,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 40),
            const Icon(
              IconConstants.waterDropIcon,
              size: 22,
              color: ColorConstants.whiteColor,
            ),
            const SizedBox(width: 8),
            Text(
              "60%",
              style: TextStyle(
                color: ColorConstants.whiteOpacity9Color,
                fontSize: 14,
              ),
            )
          ],
        )
      ],
    );
  }
}
