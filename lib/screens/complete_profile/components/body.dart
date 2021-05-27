import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:flutter/material.dart';
import 'package:building/size_config.dart';

import '../../../constraints.dart';
import 'Complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue\nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              CompleteProfileForm(),
              SizedBox(
                height: getProptionateScreenHeight(30),
              ),
              Text(
                "By Continuing your confirm that you agree\nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
