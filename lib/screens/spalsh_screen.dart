import 'package:flutter/material.dart';

import 'package:building/screens/components/body.dart';

import '../size_config.dart';


class SplashScreen extends StatelessWidget {
  static String routeName='/spllash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Body(),

    );
  }
}
