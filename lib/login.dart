import 'package:e_zakat/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 48, 0, 15),
                child: Text('Login',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 36),
                child: Text('Membayar zakat dengan lebih mudah!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Center(
                child: Image.asset('images/signin_google.png'),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 50),
                child: Image.asset('images/under_signin_google.png'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 45, 0, 0),
                child: Text('Email*',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'mail@website.com',
                  ),
                  onChanged: (String value){
                    setState(() {
                      _email = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Text('Password*',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Min. 8 Character',
                  ),
                  onChanged: (String value){
                    setState(() {
                      _password = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: (){
                    //Lanjut ke homepage
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomePage();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
