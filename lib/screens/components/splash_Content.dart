import 'package:flutter/material.dart';
import 'package:building/size_config.dart';

import 'package:building/constraints.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Building",
          style: TextStyle(
            fontSize:getProptionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign:TextAlign.center,
        ),
        Spacer(flex: 2,),
        Image.asset(
          image,
          height: getProptionateScreenHeight(265),
          width: getProptionateScreenWidth(235),
        ),
      ],
    );
  }
}
