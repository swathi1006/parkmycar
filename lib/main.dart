import 'package:flutter/material.dart';
import 'package:parkmycar/screens/homepage.dart';
import 'package:parkmycar/screens/new_otp.dart';
import 'package:parkmycar/screens/otppage.dart';
import 'package:parkmycar/screens/otpscreen.dart';
import 'package:parkmycar/screens/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //home: SplashPage(),
      //home: OTPScreen(),
      //home: OTPVerification(),
      //home: OTPVerificationn(),
      home: MapWithFABs(),
    );
  }
}

