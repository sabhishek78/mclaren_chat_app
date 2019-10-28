import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'login_page.dart';
import 'register_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Hero(
                tag: 'ImageHero',
                child: Container(

                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/logo.png")))),
              ),
              Text(
                'McLaren Chat',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40.0,
                  fontFamily: 'Spartan MB',
                ),
              ),
              SizedBox(height: 25,),
              ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                  child: new Text('Login'),
                  color: Colors.blue,
                  onPressed: () async {
                    try {
                      Navigator.push(
                          (context),
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    } on Exception catch (e) {
                      Alert(
                              context: context,
                              title: "network problem",
                              desc: "Please try after some time")
                          .show();
                    }
                  },
                ),
              ),
              SizedBox(height: 25,),
              ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                  child: new Text('Register'),
                  color: Colors.purple,
                  onPressed: () async {
                    try {
                      Navigator.push(
                          (context),
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    } on Exception catch (e) {
                      Alert(
                              context: context,
                              title: "network problem",
                              desc: "Please try after some time")
                          .show();
                    }
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
