import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "REGISTRATION",
          style: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Divider(
          color: Colors.transparent,
          height: 50,
        ),
        Text(
            "Enter your mobile number,we will send OTP to verify your mobile number",
            style: TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center),
      ],
    );
  }
}
