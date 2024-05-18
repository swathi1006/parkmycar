import 'package:flutter/material.dart';
import 'package:parkmycar/screens/otppage.dart';

class EnterPhoneNumber extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: 70,),
            const Text("Enter your phone number for OTP",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            const Text("Phone Number",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
             // controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Phone number',
               // labelText: 'Phone Number',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/flag.png', // Path to Indian flag image
                    width: 20,
                    height: 20,
                  ),
                ),
                prefixText: '+91 ',
                prefixStyle: const TextStyle(fontSize: 16.0),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
             const SizedBox(height: 30,),

            Center(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                minWidth: 350,
                height: 50,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerification()));
                },
                color: Colors.orangeAccent,
                child: const Text("Get Code",
                style: TextStyle(fontSize: 20),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
