import 'package:building/components/NoAccountWidget.dart';
import 'package:building/components/Social_card.dart';
import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:building/screens/forget_password/forget_password_screen.dart';
import 'package:building/screens/home/home_screen.dart';
import 'package:building/screens/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:building/size_config.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constraints.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, HomeScreen.routeName),
                  child: Text(
                    "Skip to Home",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),

                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.08,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProptionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Signin with your Email and password\n or continue with Social Media",
                  textAlign: TextAlign.center,

                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.08,
                ),
                SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight*0.08,
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
                SizedBox(
                  height: getProptionateScreenHeight(20),
                ),
                NoAccountWidget(),
                SizedBox(
                  height: getProptionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } 
}
