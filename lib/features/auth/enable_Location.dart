import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now_ship_driver/core/constatnts/colors.dart';
import 'package:now_ship_driver/core/constatnts/space.dart';
import 'package:now_ship_driver/core/constatnts/text_theme.dart';
import 'package:now_ship_driver/features/auth/images.dart';
import 'package:now_ship_driver/features/auth/text.dart';
import 'package:now_ship_driver/routes/routes.dart';
import 'package:now_ship_driver/widgets/button.dart';
import 'package:now_ship_driver/widgets/nonColoredButton.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacementNamed(context, Routes.enableLocation);
              });
            },
            child: Text(
              'Skip',
              style: TextStyle(color: AppColors.mainColor, fontSize: 20.sp),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AuthImages.image1),
                AppSpace.verticalSpace(40),
                Text(
                  EnableLocationText.headerText,
                  style: TextThemes.OnBoardingHeaderText,
                ),
                AppSpace.verticalSpace(10),
                Text(
                  EnableLocationText.subtitleText,
                  style: TextThemes.OnBoardingBodyText,
                  textAlign: TextAlign.center,
                ),
                AppSpace.verticalSpace(100),
                button(text: 'Next', onpressed: () {}),
                AppSpace.verticalSpace(20),
                Noncoloredbutton(text: 'Next', onpressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
