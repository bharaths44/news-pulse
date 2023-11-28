import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  //final LoginController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final String logo = 'assets/images/news_icon.svg';
    final Widget logosvg = SvgPicture.asset(logo);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        alignment: Alignment.center,
        children: [
          //Login Form
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(45),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: logosvg,
                  ),

                  Text(
                    'Email:',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) {
                      // Update the UI state value in the controller
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password:',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) {
                      // Update the UI state value in the controller
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle login button press
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shadowColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Handle forgot password button press
                    },
                    child: Text('Forgot your Password?'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Add more widgets as per the design requirements
                ],
              ),
            ),
          )
          //Login container end
          ,
          Positioned(
            left: 45,
            right: 45,
            bottom: 100,
            child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Text("Or Sign in with")),
          )
        ],
      ),
    );
  }
}
