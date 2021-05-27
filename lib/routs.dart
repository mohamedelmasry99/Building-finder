import 'package:building/screens/Login_Success/login_success_screen.dart';
import 'package:building/screens/complete_profile/complete_profile_screen.dart';
import 'package:building/screens/forget_password/forget_password_screen.dart';
import 'package:building/screens/home/home_screen.dart';
import 'package:building/screens/otp/otp_screen.dart';
import 'package:building/screens/sign_in/signin_screen.dart';
import 'package:building/screens/sign_up/sign_up_screen.dart';
import 'package:building/screens/spalsh_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String,WidgetBuilder> routes={
  SplashScreen.routeName:(context)=>SplashScreen(),
  SignInScreen.routeName:(context)=>SignInScreen(),
  ForgetPasswordScreen.routeName:(context)=>ForgetPasswordScreen(),
  LoginSuccessScreen.routeName:(context)=>LoginSuccessScreen(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  CompleteProfileScreen.routeName:(context)=>CompleteProfileScreen(),
  OtpScreen.routeName:(context)=>OtpScreen(),
  HomeScreen.routeName:(context)=>HomeScreen(),

};