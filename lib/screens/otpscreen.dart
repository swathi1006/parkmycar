import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerificationn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 100),
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
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    _SingleDigitInputFormatter(), // Custom input formatter for single digit numeric input
                  ],
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

// Custom input formatter for allowing only single digit numeric input
class _SingleDigitInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Ensure that only single digit numeric input is allowed
    if (newValue.text.isEmpty) {
      return TextEditingValue.empty;
    }
    int parsedValue = int.tryParse(newValue.text) ?? 0;
    if (parsedValue < 0 || parsedValue > 9) {
      return oldValue;
    }
    return newValue;
  }
}


