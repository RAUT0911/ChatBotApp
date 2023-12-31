import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../common_widgets/form/form_widget_header.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
  body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            const  SizedBox(height: tDefaultSize*4,),
            const  FormHeaderWidget(
                image: tForgetPasswordImage ,
                title: tForgetPassWord,
                subTitle: tForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.start,

              textAlign:TextAlign.center ,
              imageHeight: 0.3,
            ),
            SizedBox(height: tFormHeight,),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(tEmail),
                      hintText: tEmail,
                      prefixIcon: Icon(Icons.mail_outline_rounded)
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Get.to(()=>const OTPScreen());
                    },
                        child: const Text(tNext)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
  ),
     ),
   );
  }


}