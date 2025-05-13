import 'package:flutter/material.dart';

class AppSpace {
  //for vertical space
  static Widget verticalSpace(double size) {
    return SizedBox(height: size);
  }

  //for horizontal space
  static Widget horizontalSpace(double size) {
    return SizedBox(width: size);
  }
}
