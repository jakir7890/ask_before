import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../const/app_colors.dart';
import '../../const/app_string.dart';

Widget outlinedButton(String title, {IconData? iconData,required double width}) {
  return SizedBox(
    height: 40,
    width:width,
    child: OutlinedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: AppColors.mainColor,
          ),
          Text(
            title,
            style: TextStyle(color: AppColors.mainColor),
          ),
        ],
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 2.5, color: AppColors.mainColor),
        shape: StadiumBorder(),
      ),
    ),
  );
}
