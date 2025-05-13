import 'package:flutter/material.dart';
import 'package:now_ship_driver/core/constatnts/colors.dart';

class Noncoloredbutton extends StatelessWidget {
  const Noncoloredbutton({
    super.key,
    required this.text,
    required this.onpressed,
  });
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.mainColor, width: 2),
      ),
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(text, style: TextStyle(fontSize: 22)),

        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.whiteColor,
          foregroundColor: AppColors.mainColor,
          //side: BorderSide(color: AppColors.mainColor)) ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
