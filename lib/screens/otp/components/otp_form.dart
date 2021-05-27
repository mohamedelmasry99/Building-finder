import 'package:building/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';

class Otpform extends StatefulWidget {
  @override
  _OtpformState createState() => _OtpformState();
}

class _OtpformState extends State<Otpform> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode=FocusNode();
    pin3FocusNode=FocusNode();
    pin4FocusNode=FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();


    // TODO: implement dispose
    super.dispose();
  }
  void nextField({String value,FocusNode focusNode}){
    if(value.length==1){
      focusNode.requestFocus();

    }

  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProptionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  style: TextStyle(
                    fontSize: 24,

                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration:otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProptionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  style: TextStyle(
                    fontSize: 24,

                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration:otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProptionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  style: TextStyle(
                    fontSize: 24,

                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration:otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProptionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  style: TextStyle(
                    fontSize: 24,

                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration:otpInputDecoration,
                  onChanged: (value){
                    pin4FocusNode.unfocus();
                  },
                ),
              ),

            ],
          ),
          SizedBox(
            height:SizeConfig.screenHeight*0.15 ,
          ),
          DefaultButton(
            text: "Continue",
            press: (){

            },
          ),
        ],
      ),
    );
  }
}
