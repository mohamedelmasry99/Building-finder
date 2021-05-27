import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';


class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key, this.icon, this.press,
  }) : super(key: key);
  final String icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProptionateScreenWidth(10)),
        padding: EdgeInsets.all(getProptionateScreenWidth(12)),
        height: getProptionateScreenHeight(60),
        width: getProptionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Color(0xfff5f6f9),
          shape: BoxShape.circle,

        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
