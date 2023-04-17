import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants/color_constants.dart';
import 'package:weather_app/helpers/constants/image_constants.dart';

import 'widgets/body_section.dart';
import 'widgets/city_section.dart';
import 'widgets/footer_section.dart';
import 'widgets/top_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage(ImageConstants.bgImage),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  ColorConstants.kbgOverlayColor.withOpacity(0.83),
                  BlendMode.srcOver)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 78),
            TopBar(),
            SizedBox(height: 64),
            CitySection(),
            SizedBox(height: 96),
            BodySection(),
            SizedBox(height: 96),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
