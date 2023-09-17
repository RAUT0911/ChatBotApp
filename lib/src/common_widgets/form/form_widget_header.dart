import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
        this.imageColor,
        this.heightBetween,
      required this.image,
      required this.title,
      required this.subTitle,
        this.imageHeight=0.2,
        this.crossAxisAlignment=CrossAxisAlignment.start,
        this.textAlign,
      })
      : super(key: key);
  final String image, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image(image: AssetImage(image), height: size.height * imageHeight),
        SizedBox(height: heightBetween,),
        Center(
          child: Text(title,
              style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                  ),

          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
