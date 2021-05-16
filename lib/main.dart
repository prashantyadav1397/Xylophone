import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
      ),
      home: XylophoneSplash(),
    ),
  );
}
