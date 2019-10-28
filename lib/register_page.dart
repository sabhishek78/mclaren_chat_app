import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Row(

              children: <Widget>[
                Hero(
                  tag: 'ImageHero',
                  child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/logo.png")))),
                ),
                SizedBox(width: 20),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontFamily: 'Spartan MB',
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: TextField(
                    style:  TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    controller: TextEditingController(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: TextField(
                    style:  TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    controller: TextEditingController(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            ButtonTheme(
              minWidth: 300.0,
              height: 50.0,

              child: RaisedButton(
                child: new Text('Register'),
                color: Colors.purple,
                onPressed: () {},
              ),
            ),
          ]),
    );
  }
}
