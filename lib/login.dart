import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_login/home.dart';
import 'otp.dart';

void main ()=> runApp(MaterialApp(
  home:Login(),
));


class Login extends StatefulWidget {
  static final ROUTE = '/';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  bool _validate = false;
  final _text = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();
 Future<String> createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        title: Text("الرجاء ادخال الرمز"),

        content: TextField(

          keyboardType: TextInputType.phone,

          controller: customController,

        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text('تأكيد'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],

      );

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldkey,
      body:
          Directionality(
            textDirection: TextDirection.rtl,

             child: Container(
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
                       image: AssetImage('assets/test.png'),
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
                  controller: _text,
                  decoration: InputDecoration(
                    hintText: 'ادخل رقم الهاتف',
                     errorText: _validate ? 'الرجاء ادخال الرقم' : null,
                  ),
                  keyboardType: TextInputType.phone,
                  maxLength: 11,

                ),
              ),


              SizedBox(
                width: 150.0,
                height: 60.0,

                child: RaisedButton(
                  child:  Text('التالي',style: TextStyle(fontSize: 20.0),),

                  textColor: Colors.white,
                  color: Colors.lightBlueAccent,

                  shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(20.0),

                  ),
                  padding: const EdgeInsets.all(15.0) ,
                  onPressed: (){
                    setState(() {

                      _text.text.isEmpty ? _validate = true : _validate = false;
                       if(_validate == false){
                         createAlertDialog(context).then((onValue) {
                    });
 }

                   });
                  },
                ),
              )

            ],

          ),
        ),


      ),
          )
    );
  }
}


//Navigator.of(context).pushReplacementNamed('/Home');
