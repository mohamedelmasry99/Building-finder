import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';


class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key key,@required this.svgSrc, this.numOfItems=0,@required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProptionateScreenWidth(12)),
            height: getProptionateScreenWidth(46),
            width: getProptionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,


            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItems!=0)
            Positioned(
              right:0,
              top: -3,
              child: Container(
                height: getProptionateScreenWidth(16),
                width: getProptionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xffff4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5,color: Colors.white,),

                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      fontSize: getProptionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
