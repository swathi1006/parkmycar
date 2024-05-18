import 'package:flutter/material.dart';

class OTPVerification  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("OTP Verification",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            SizedBox(height: 25,),
            const Text("Enter the verification code we just sent on your phone number.",
                style: TextStyle(fontSize: 20,color: Colors.black54)),
            const SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) => SizedBox(
                height: 115,
                width: 65,
                child: TextField(
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              )),
            ),
            const SizedBox(height: 50,),
            Center(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                minWidth: 350,
                height: 50,
                onPressed: (){},
                color: Colors.orangeAccent,
                child: const Text("Get Code",
                  style: TextStyle(fontSize: 20),
                ),

              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Text("Resend OTP in 0s",
              style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 25),
            Center(
              child: RichText(text: TextSpan(text: "Resend OTP",
              style: TextStyle(color: Colors.blue,fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
