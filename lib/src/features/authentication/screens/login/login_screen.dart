import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_widget_header.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/widgets/login_header_widget.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Section One
            FormHeaderWidget(
                image: tWelcomeScreenImage,
                title: tLoginTitle,
                subTitle: tLoginSubTitle

            ),
            //End
            //Section 2:
            const LoginForm(),
            const LoginFooterWidget(),
          ],
        ),
      ),
    ));
  }
}


