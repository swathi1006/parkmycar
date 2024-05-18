import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parkmycar/screens/enternumber.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EnterPhoneNumber() ));
    });
    
    return Scaffold(

      body: Center(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image:AssetImage("assets/images/parkmycar.png"),
            fit: BoxFit.cover)
          ),

        ),
      ),

    );
  }
}
