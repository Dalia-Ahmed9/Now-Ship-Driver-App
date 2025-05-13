import 'package:flutter/material.dart';
import 'package:now_ship_driver/features/auth/enable_Location.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/EnableLocation':
        return MaterialPageRoute(builder: (_) => EnableLocation());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
