import 'package:flutter/material.dart';

class SigninWith extends StatelessWidget {
  const SigninWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(45, 20, 45, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: Colors.grey,
              height: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or Sign in with",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
