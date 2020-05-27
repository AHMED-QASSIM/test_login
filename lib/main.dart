import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'otp.dart';

void main ()=> runApp(MaterialApp(
  home:MyApp(),
));


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute:  Login.ROUTE,
      routes: {
        Login.ROUTE:(context) => Login(),
        //Otp.ROUTE:(context) => Otp(),
         Home.ROUTE:(context)=> Home(),
    },
    );
  }
}
