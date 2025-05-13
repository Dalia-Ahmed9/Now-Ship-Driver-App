import 'package:flutter/material.dart';
import 'package:now_ship_driver/core/constatnts/space.dart';
import 'package:now_ship_driver/core/constatnts/text_theme.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onBoarding_needs/images.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onBoarding_needs/text.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(OnBoardingImages.image2),
              AppSpace.verticalSpace(40),
              Text(
                HeaderText.headerText2,
                style: TextThemes.OnBoardingHeaderText,
              ),
              AppSpace.verticalSpace(10),
              Text(
                SubtitleText.subtitleText2,
                style: TextThemes.OnBoardingBodyText,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
