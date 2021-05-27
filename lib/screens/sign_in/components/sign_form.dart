import 'package:building/components/customicon.dart';
import 'package:building/components/default_button.dart';
import 'package:building/components/form_errors.dart';
import 'package:building/screens/login_success/login_success_screen.dart';
import 'package:building/screens/forget_password/forget_password_screen.dart';
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';


class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey=GlobalKey<FormState>();
  String email;
  String password;
  bool remember=false;
  final List<String>errors=[];
  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formKey,
      child: Column(
        children: [
          EmailFormField(),
          SizedBox(height: getProptionateScreenHeight(30),),
          PasswordFormField(),
          SizedBox(height: getProptionateScreenHeight(30),),

          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                    setState(() {
                      remember=value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: ()=>Navigator.pushNamed(context, ForgetPasswordScreen.routeName),
                child: Text(
                  "ForgetPassword",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),

                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProptionateScreenHeight(20),),
          DefaultButton(
            text: 'Continue',
            press: (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                Navigator.pushNamed(context,LoginSuccessScreen.routeName);

              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField PasswordFormField() {
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

  TextFormField EmailFormField() {
    return TextFormField(
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
          return "";
        }
        else if(!emailValidatorRegExp.hasMatch(value)&&!errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
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
    );PasswordFormField();
  }
}
