import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key, this.icon,
  }) : super(key: key);
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(
        0,
        getProptionateScreenWidth(20),
        getProptionateScreenWidth(20),
        getProptionateScreenWidth(20),
      ),

      child: SizedBox(
        height: getProptionateScreenWidth(18),
        child: icon,
      ),
    );
  }
}
