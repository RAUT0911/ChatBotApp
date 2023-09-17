


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();



    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 5,topBefore: 0,
              leftAfter: 5 ,leftBefore: 100
            ),
            child: const Image(image: AssetImage(tSplashTopIcon ),height: 70,),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(topBefore: 80, topAfter: 80, leftAfter: tDefaultSize, leftBefore: -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName,
                    style: Theme.of(context).textTheme.headline3),
                Text(tAppTagLine,
                    style: Theme.of(context).textTheme.headline2)
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: const Image(image: AssetImage(tSplashImage)),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 60, rightBefore: tDefaultSize, rightAfter: tDefaultSize),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}