import 'package:flutter/material.dart';
import 'package:trailerfilm_app/forgotpassword.dart';
import 'package:trailerfilm_app/signup.dart';
import 'package:trailerfilm_app/pages/root_app.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
              child: Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(15),
                  child: Image.asset('assets/image/uit-logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text('Welcome', style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "USERNAME",
                    labelStyle:
                    TextStyle(color: Colors.blueGrey,
                        fontSize: 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15)),
                  ),
                  Text("Show",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment(1.0, 0.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
                  },
                  child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline
                    ),
                  ),
                )
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RootApp())
                    );
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0,),
            Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp())
                    );
                  },
                  child: Text('Sign Up',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
Future getData() async{
  var url = 'hhttps://files.000webhost.com/get.php';
  http.Response response = await http.get(url);
  var data = jsonDecode(response.body);
}