import 'package:flutter/material.dart';
import 'package:building/size_config.dart';

class Categories extends StatelessWidget {
  List<Map<String,dynamic>> categories=[
    {"icon":"assets/icons/Camera Icon.svg","text":"m"},
    {"icon":"assets/icons/Camera Icon.svg","text":"m"},
    {"icon":"assets/icons/Camera Icon.svg","text":"m"},
    {"icon":"assets/icons/Camera Icon.svg","text":"m"},
    {"icon":"assets/icons/Camera Icon.svg","text":"m"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:getProportionateScreenWidth(55),
      child:AspectRatio(
        aspectRatio:1,
        child:Container(
          //decoration:,
        ),
      ),
    );
  }

  getProportionateScreenWidth(int i) {}
}
