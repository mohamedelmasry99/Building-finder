import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:building/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';


class CompleteProfileForm extends StatefulWidget {


  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey=GlobalKey<FormState>();
  String firstName,lastName,phoneNumber;
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
          buildFirstNameFormField(),
          SizedBox(
            height: getProptionateScreenHeight(30),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProptionateScreenHeight(30),
          ),
          buildPhoneNumberFormField(),
          FormError(errors: errors,),
          SizedBox(
            height: getProptionateScreenHeight(40),

          ),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate()){
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue)=>phoneNumber=newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          setState(() {
            removeError(error: kPhoneNumberNullError);
          });
        }

      },
      validator: (value){
        if(value.isEmpty){
          setState(() {
            addError(error: kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icon(Icons.phone),
        ),

      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue)=>lastName=newValue,

      decoration:InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icon(Icons.verified_user_sharp),
        ),

      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue)=>firstName=newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          setState(() {
            removeError(error: kNamelNullError);
          });
        }

      },
      validator: (value){
        if(value.isEmpty){
          setState(() {
            addError(error: kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icon(Icons.verified_user),
        ),

      ),
    );
  }
}

