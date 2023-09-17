import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget{
  const OTPScreen ({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(tOtpTitle,style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),),
              Text(tOtpSubTitle.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
              const SizedBox(height: 40.0,),
              Text("$tOtpMessage support@prashant.com",textAlign: TextAlign.center,),
              const SizedBox(height: 20.0,),
              OtpTextField(
                numberOfFields:6 ,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){print("OTP is => $code");},
              ),
            const SizedBox(height: 20.0,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},
                    child: Text(tNext)),
              )

            ],
          ),
        ),
      ),
    );
  }

}