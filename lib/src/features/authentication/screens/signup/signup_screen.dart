import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_widget_header.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

import 'package:login_flutter_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR",style: TextStyle(fontSize: 18),),
                    const SizedBox(height: tFormHeight-20,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(onPressed: (){},
                          icon: const Image(
                            image: AssetImage(tGoogleLogoImage),
                            width: 20,
                          ), label: const Text(tSignInWithGoogle)
                      ),
                    ),
                    TextButton(onPressed: (){},
                        child: Text.rich(TextSpan(
                          children: [
                            TextSpan(text: tAlreadyHaveAnAccount,style: Theme.of(context).textTheme.bodyMedium),
                            TextSpan(text: tLogin.toUpperCase()),
                          ]
                        )))

                   ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

