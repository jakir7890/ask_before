import 'package:ask_before/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget elevatedButton(String title) {
  return SizedBox(
    height: 40,
    width: Get.width * 0.5,
    child: ElevatedButton(
        onHover: (value) {},
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: AppColors.mainColor,
        ),
        onPressed: () {},
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.copy_rounded), Text(title)],
          ),
        )),
  );
}
