import 'package:ask_before/ui/styles/app_style.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../const/app_colors.dart';
import '../../const/app_string.dart';
import '../widgets/outlined_button.dart';
import '../widgets/elevated_button.dart';

class Webview extends StatelessWidget {
  final buttonWidth = Get.width * 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greywhite,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppConstant.logoUrl, scale: 3),
                outlinedButton(
                  AppConstant.topRightButtonText,
                  width: buttonWidth,
                  onpress: _launchUrl,
                )
              ],
            ),
            Container(
              height: Get.height * 0.150,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  AppConstant.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.mainColor,
                      letterSpacing: 1.3),
                ),
              ),
            ),
            Card(
              elevation: 3,
              shape: StadiumBorder(),
              child: Container(
                padding: EdgeInsets.all(20),
                width: Get.width * 0.5,
                height: Get.height * 0.4,
                decoration: BoxDecoration(
                    color: AppColors.pureWhite,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: AutoSizeText(
                  AppConstant.cardText[2],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Trajan Pro',
                      fontSize: 50,
                      color: AppColors.mainColor),
                )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: Get.width * 0.20,
                    child: elevatedButton('Copy this question')),
                SizedBox(
                  width: Get.width * 0.060,
                ),
                SizedBox(
                    width: Get.width * 0.20,
                    child: outlinedButton(
                      'Try another one',
                      iconData: Icons.hardware,
                      width: Get.width * 0.50,
                      onpress: () {},
                    ))
              ],
            ),
            Spacer(),
            FittedBox(
                child: TextButton(
              onPressed: _launchUrl,
              child: Text(
                AppConstant.lowerText,
                style: TextStyle(color: AppColors.mainColor),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(AppConstant.webUrl)) {
      throw 'Could not launch ${AppConstant.webUrl}}';
    }
  }
}
