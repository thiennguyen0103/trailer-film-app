import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  // This widget is the root of your application.
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
              padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
              child: Container(
                  width: 150,
                  height: 150,
                  padding: EdgeInsets.all(15),
                  child: Image.asset('assets/image/logo-user.png')
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text('Reset Password', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('Enter your email address below to reset password', style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle:
                    TextStyle(color: Colors.blueGrey,
                        fontSize: 15)),
              ),
            ),

            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Colors.red,
                  onPressed: () {},
                  child: Text(
                    "Reset Password",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}