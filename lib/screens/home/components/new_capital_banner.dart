
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';



class NewCapitalBanner extends StatelessWidget {
  const NewCapitalBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProptionateScreenWidth(20),

      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProptionateScreenWidth(20),
        vertical: getProptionateScreenWidth(15),
      ),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(
        color:kPrimaryColor,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Text.rich(
        TextSpan(
          text: "New Captal Projects\n",
          style: TextStyle(
            color: Colors.white,

          ),
          children: [
            TextSpan(
              text: "Find your new home in New Capital",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,

              ),
            ),
          ],
        ),

      ),
    );
  }
}
