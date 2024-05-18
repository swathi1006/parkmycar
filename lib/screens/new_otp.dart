import 'package:flutter/material.dart';



class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (index) => FocusNode());
    _controllers = List.generate(4, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (int i = 0; i < _focusNodes.length; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
                (index) => SizedBox(
              width: 50,
              height: 50,
              child: TextField(
                controller: _controllers[index],
                focusNode: _focusNodes[index],
                maxLength: 1,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  if (value.length == 1 && index < 3) {
                    _focusNodes[index].unfocus();
                    FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.zero,
                ),
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
