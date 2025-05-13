import 'package:flutter/material.dart';
import 'package:now_ship_driver/core/constatnts/colors.dart';

class button extends StatelessWidget {
  const button({super.key, required this.text, required this.onpressed});
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(text, style: TextStyle(fontSize: 22)),

        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColor,
          foregroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
