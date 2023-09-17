import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';
class ForgetPasswordScreen{
static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(

      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              tForgetPasswordSubTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: "E-MAIL",
              subTitle: tResetViaEmail,
              onTap: (){
                Navigator.pop(context);
                Get.to(()=> ForgetPasswordMailScreen());
                },
            ),
            const SizedBox(height: 20,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPassword,
              subTitle: tResetViaPhone,
              onTap: (){},
            ),

          ],
        ),
      ));
}
}