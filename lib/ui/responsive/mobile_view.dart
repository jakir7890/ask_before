import 'package:ask_before/ui/styles/app_style.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../const/app_colors.dart';
import '../../const/app_string.dart';
import '../widgets/outlined_button.dart';
import '../widgets/elevated_button.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int currentIndex = 0;
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
                Image.asset(AppConstant.logoUrl, scale: 4),
                outlinedButton(
                  AppConstant.topRightButtonText,
                  width: Get.width * 0.4,
                  onpress: () {},
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
            Tooltip(
              margin: EdgeInsets.only(left: 150),
              verticalOffset: 70,
              height: 40,
              preferBelow: false,
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              message: '✅ Copy Text ✅',
              child: Card(
                elevation: 3,
                shape: StadiumBorder(),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: Get.width * 0.9,
                  height: Get.height * 0.2,
                  decoration: BoxDecoration(
                      color: AppColors.pureWhite,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: AppConstant.cardText.length > currentIndex
                          ? AutoSizeText(
                              AppConstant.cardText[currentIndex],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 50,
                                  color: AppColors.mainColor),
                            )
                          : AutoSizeText(
                              AppConstant.cardText[0],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 50,
                                  color: AppColors.mainColor),
                            )),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            elevatedButton('Copy this question'),
            AppStyles.devider,
            outlinedButton(
              'Try another one',
              iconData: Icons.hardware,
              width: Get.width * 0.50,
              onpress: () {
                setState(() {
                  currentIndex++;
                  if (currentIndex == AppConstant.cardText.length) {
                    Fluttertoast.showToast(
                        msg: 'List Finished', webPosition: 'center');
                  }
                });
              },
            ),
            Spacer(),
            FittedBox(
                child: Text(
              AppConstant.lowerText,
              style: TextStyle(color: AppColors.mainColor),
            ))
          ],
        ),
      ),
    );
  }
}
