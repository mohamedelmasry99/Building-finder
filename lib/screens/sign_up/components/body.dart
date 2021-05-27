import 'package:building/components/Social_card.dart';
import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:building/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:building/constraints.dart';
import 'package:building/size_config.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight*0.02,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue\nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.07,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight*0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: (){},
                  ),
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: (){},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: (){},
                  ),
                ],
              ),
              SizedBox(height: getProptionateScreenHeight(20),),
              Text(
                  "By press Continue you confirm that you agree\nwith our terms and conditions",
                  textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
