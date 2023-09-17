import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key?key,}):super(key:key);



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image(
            image: AssetImage(tWelcomeScreenImage),
            height: size.height * 0.2),
        Text(tLoginTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontStyle: FontStyle.italic)),
        SizedBox(
          height: 5,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
