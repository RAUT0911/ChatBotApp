


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome_screen.dart';
class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
     animate.value =true;
    await Future.delayed(Duration(milliseconds: 3000));
    //new 3 line for
    animate.value =false ;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => const WelcomeScreen());
    //new line for Welcome Screen
  //  Get.to(WelcomeScreen());
    //new Line onBoarding
   // Get.to(OnBoardingScreen());
    //old line
    // Get.to(OnBoardingScreen());
    //Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>welcome()));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value =true;

  }
}

