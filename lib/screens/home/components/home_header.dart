import 'package:building/screens/home/components/search_Field.dart';
import 'package:building/screens/home/components/icon_btn_with_success.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';



class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(
        horizontal: getProptionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchField(),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 3,
            press: (){},
          ),
        ],
      ),
    );
  }
}
