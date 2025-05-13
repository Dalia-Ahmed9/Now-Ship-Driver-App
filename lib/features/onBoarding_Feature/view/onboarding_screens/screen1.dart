import 'package:flutter/material.dart';
import 'package:now_ship_driver/core/constatnts/space.dart';
import 'package:now_ship_driver/core/constatnts/text_theme.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onBoarding_needs/images.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onBoarding_needs/text.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(OnBoardingImages.image1),
            AppSpace.verticalSpace(40),
            Text(
              HeaderText.headerText1,
              style: TextThemes.OnBoardingHeaderText,
            ),
            AppSpace.verticalSpace(10),
            Text(
              SubtitleText.subtitleText1,
              style: TextThemes.OnBoardingBodyText,
            ),
          ],
        ),
      ),
    );
  }
}
