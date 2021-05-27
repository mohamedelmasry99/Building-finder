import 'package:building/screens/forget_password/forget_password_screen.dart';
import 'package:building/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constraints.dart';
import '../size_config.dart';


class NoAccountWidget extends StatelessWidget {
  const NoAccountWidget({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
              fontSize: getProptionateScreenWidth(16)
          ),
        ),
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProptionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
