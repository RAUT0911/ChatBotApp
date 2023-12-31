import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:login_flutter_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {

  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();


    return Scaffold(

      body:

      Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,

            child: OutlinedButton(
              onPressed: () => obcontroller.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                    color: Colors.black26
                ),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                      color: tDarkColor, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward_ios)),
            ),

          ),
          Positioned(
              top: 50,
              right: 30,
              child: TextButton(
                onPressed: () => obcontroller.skip(),
                child: Text(
                  "Skip", style: TextStyle(fontSize: 20, color: Colors.grey),),
              )),
          Obx(()=> Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obcontroller.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                      activeDotColor: Color(0xff272727),
                      dotHeight: 5.0
                  ),

                )),
          )
        ],
      ),
    );
  }

}
