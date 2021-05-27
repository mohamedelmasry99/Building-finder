import 'package:building/screens/home/components/categories.dart';
import 'package:flutter/material.dart';
import 'package:building/size_config.dart';
import 'home_header.dart';
import 'new_capital_banner.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(
              height: getProptionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProptionateScreenWidth(30),
            ),
            NewCapitalBanner(),

            Categories(),

          ],
        ),
      ),
    );
  }
}