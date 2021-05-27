import 'package:building/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import 'package:building/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              Text(
                  'OTP Verification',
                style: headingStyle,
              ),
              Text(
                'We sent your code to +20151*********01'
              ),
              buildTimmer(),
              SizedBox(height: SizeConfig.screenHeight*0.15,),
              Otpform(),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              GestureDetector(
                onTap: (){

                },
                child: Text("Re-send OTP code",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimmer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You code will be expired in "),
            TweenAnimationBuilder(
                tween: Tween(begin: 30.0,end: 0.0),
                duration: Duration(seconds: 30),
                builder: (context, value, child) =>
                    Text(
                    "00:${value.toInt()}",
                      style: TextStyle(color: kPrimaryColor),
                ),
              onEnd: (){

              },
            ),
          ],
        );
  }
}
