import 'package:flutter/material.dart';
import 'login.dart';
import 'otp.dart';

void main ()=> runApp(MaterialApp(
    home:Home(),

));

class Home extends StatefulWidget {
  static final ROUTE = '/Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:  Text("home page"),
      ),
    body: null,

    );
  }
}
