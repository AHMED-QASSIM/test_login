import 'package:flutter/material.dart';

void main ()=> runApp(MaterialApp(
  home:Otp(),
));


class Otp extends StatefulWidget {
  static final ROUTE = '/Otp';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Otp> {
  final formkey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldkey,
      body:
      Container(
        decoration:BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5,8],
                colors: [Colors.white,  Colors.lightBlueAccent])),


        child: Center(
          child: Column(
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage('assets/test2.png'),
                  height: 300.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                "التوصيل",
                style: TextStyle(
                  color: Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  key: formkey,
                  decoration: InputDecoration(
                    hintText: 'enter your number',


                  ),
                  keyboardType: TextInputType.phone,

                ),
              ),


              SizedBox(
                width: 150.0,
                height: 60.0,
                child: RaisedButton(
                  child:  Text('تأكيد',style: TextStyle(fontSize: 20.0),),
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(20.0),

                  ),
                  padding: const EdgeInsets.all(15.0) ,
                  onPressed: (){

                  },
                ),
              )

            ],

          ),
        ),


      ),

    );
  }
}
