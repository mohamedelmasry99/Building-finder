import 'package:building/components/NoAccountWidget.dart';
import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:flutter/material.dart';
import 'package:building/size_config.dart';

import '../../../constraints.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:getProptionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: getProptionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(
                "Please Enter your email and we will send \n you a link to return to your account",
                textAlign: TextAlign.center,

              ),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              ForgetPasswordForm(),

            ],
          ),
        ),
      ),
    );
  }
}
class ForgetPasswordForm extends StatefulWidget {
  @override
  _ForgetPasswordFormState createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  final _formKey=GlobalKey<FormState>();
  List<String> errors=[];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
        TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue)=>email=newValue,
        onChanged: (value){
          if(value.isNotEmpty&&errors.contains(kEmailNullError)){
            setState(() {
              errors.remove(kEmailNullError);
            });
          }
          else if(emailValidatorRegExp.hasMatch(value)&&errors.contains(kInvalidEmailError)){
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
        },
        validator: (value){
          if(value.isEmpty&&!errors.contains(kEmailNullError)){
            setState(() {
              errors.add(kEmailNullError);
            });
          }
          else if(!emailValidatorRegExp.hasMatch(value)&&!errors.contains(kInvalidEmailError)){
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;
        },
        decoration:InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: Icon(Icons.email),
          ),

        ),
      ),
          SizedBox(height: getProptionateScreenHeight(30),),
          FormError(errors: errors,),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          DefaultButton(
            text: 'Continue',
            press: (){
              if(_formKey.currentState.validate()){}
            },
          ),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          NoAccountWidget(),
        ],
      ),
    );
  }
}
