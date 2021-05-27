import 'package:building/components/default_button.dart';
import 'package:building/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight*0.04,),
        SizedBox(
          width: double.infinity,
          child: Image.asset(
              "assets/images/loginsuccess.png",
              height: SizeConfig.screenHeight*0.4,
              width: SizeConfig.screenWidth*0.8,

          ),
        ),
        SizedBox(height: SizeConfig.screenHeight*0.08,),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProptionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth*0.6,
          child: DefaultButton(
            text: "Back to home",
            press: ()=>Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
