import 'dart:async';
import 'package:Xylophone/xylophone.dart';
import 'package:flutter/material.dart';

class XylophoneSplash extends StatefulWidget {
  @override
  _XylophoneSplashState createState() => _XylophoneSplashState();
}

class _XylophoneSplashState extends State<XylophoneSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => Xylophone(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/splash.png'),
                radius: 60.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Xylophone App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
