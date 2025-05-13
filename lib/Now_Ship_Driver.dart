import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now_ship_driver/core/constatnts/colors.dart';
import 'package:now_ship_driver/features/onBoarding_Feature/view/OnBoarding_ui.dart';
import 'package:now_ship_driver/routes/App_Router.dart';

class NowShipDriver extends StatelessWidget {
  const NowShipDriver({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,

      // Use builder only if you need to use library outside ScreenUtilInit context
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.whiteColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: AppColors.whiteColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
        onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      ),
    );
  }
}
