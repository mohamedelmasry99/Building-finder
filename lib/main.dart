import 'package:building/routs.dart';
import 'package:building/screens/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:building/theme.dart';
import 'constraints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
