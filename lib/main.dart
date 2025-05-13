import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:now_ship_driver/Now_Ship_Driver.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: const Color.fromARGB(0, 0, 0, 0),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  Future.delayed(Duration(seconds: 10));
  FlutterNativeSplash.remove();

  runApp(const NowShipDriver());
}
