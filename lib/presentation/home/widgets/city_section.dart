import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';

class CitySection extends StatelessWidget {
  const CitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 226,
      height: 61,
      child: Column(
        children: [
          const Text(
            "San Francisco",
            style: TextStyle(
              color: ColorConstants.whiteColor,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat("EEEEE, dd MMM yyyy").format(DateTime.now()),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
