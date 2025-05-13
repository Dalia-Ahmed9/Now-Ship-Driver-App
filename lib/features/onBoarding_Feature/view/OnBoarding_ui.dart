import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now_ship_driver/core/constatnts/colors.dart';
import 'package:now_ship_driver/core/constatnts/space.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onboarding_screens/screen1.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onboarding_screens/screen2.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/onboarding_screens/screen3.dart';
import 'package:now_ship_driver/routes/routes.dart';
import 'package:now_ship_driver/widgets/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

final List<Widget> pages = [Screen1(), Screen2(), Screen3()];

final PageController controller = PageController();

int currentindex = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      final newIndex = controller.page!.round();
      if (currentindex != newIndex) {
        setState(() {
          currentindex = newIndex;
        });
      }
    });
  }

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
        child: Column(
          children: [
            Expanded(
              child: PageView(
                children: pages,
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              axisDirection: Axis.horizontal,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.mainColor,
                dotColor: AppColors.greyColor,
                dotHeight: 10.sp,
                dotWidth: 10.sp,
                spacing: 5.sp,
              ),
            ),
            AppSpace.verticalSpace(100.sp),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: button(
                text: currentindex == 2 ? 'Get Started' : 'Next',
                onpressed: () {
                  setState(() {
                    if (currentindex < 2) {
                      setState(() {
                        controller.nextPage(
                          duration: Duration(milliseconds: 50),
                          curve: Curves.bounceIn,
                        );
                      });
                    } else {
                      Navigator.pushReplacementNamed(
                        context,
                        Routes.enableLocation,
                      );
                    }
                  });
                },
              ),
            ),
            AppSpace.verticalSpace(20.sp),
          ],
        ),
      ),
    );
  }
}
