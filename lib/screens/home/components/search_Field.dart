import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';



class searchField extends StatelessWidget {
  const searchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.75,
      height: 50,

      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),

      ),
      child: TextField(
        onChanged: (value){

        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search here",
          prefixIcon: Icon(Icons.search),
          suffixIcon: GestureDetector(
              onTap: (){
                //filteration in search
              },
              child: Icon(Icons.settings_input_component)),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProptionateScreenWidth(20),
            vertical: getProptionateScreenWidth(9),
          ),


        ),
      ),

    );
  }
}
