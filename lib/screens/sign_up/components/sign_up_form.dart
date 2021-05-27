import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:building/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';



class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey=GlobalKey<FormState>();
  String email,password,confirm_password;
  final List<String> errors=[];
  void addError({String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }
  void removeError({String error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProptionateScreenHeight(30),),
          buildPasswordFormField(),
          SizedBox(height: getProptionateScreenHeight(30),),
          buildconfirmpasswordformfield(),
          FormError(errors: errors,),
          SizedBox(height: getProptionateScreenHeight(40),),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate()){
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),

        ],
      ),
    );
  }

  TextFormField buildconfirmpasswordformfield() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue)=>confirm_password=newValue,
      onChanged:  (value){
        if(password==confirm_password&&errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kMatchPassError );
          });
        }

        return null;
      },
      validator: (value){
        if(value.isEmpty&&!errors.contains(kPassNullError)){

          return "";
        }
        else if(password!=value){
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icon(Icons.lock),
        ),

      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue)=>password=newValue,
      onChanged:  (value){
        if(value.isNotEmpty&&errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError );
          });
        }
        else if(value.length>=8&&errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password=value;
        return null;
      },
      validator: (value){
        if(value.isEmpty&&!errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError );
          });
          return "";
        }
        else if(value.length<8&&!errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icon(Icons.lock),
        ),

      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue)=>email=newValue,
      onChanged: (value){
        if(value.isNotEmpty&&errors.contains(kEmailNullError)){
          setState(() {
            removeError(error: kEmailNullError);
          });
        }
        else if(emailValidatorRegExp.hasMatch(value)&&errors.contains(kInvalidEmailError)){
          setState(() {
            removeError(error: kInvalidEmailError);
          });
        }
      },
      validator: (value){
        if(value.isEmpty&&!errors.contains(kEmailNullError)){
          setState(() {
            addError(error: kEmailNullError);
          });
          return "";
        }
        else if(!emailValidatorRegExp.hasMatch(value)&&!errors.contains(kInvalidEmailError)){
          setState(() {
            addError(error: kInvalidEmailError);
          });
          return "";
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
    );
  }
}
