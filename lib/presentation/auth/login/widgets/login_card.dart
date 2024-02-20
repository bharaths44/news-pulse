import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    final String logo = 'assets/images/news_icon.svg';
    final Widget logosvg = SvgPicture.asset(logo);
    return Container(
      height: Get.size.height * 0.50,
      width: Get.size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 5,
            offset: Offset(0, 0), // changes x,y position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150,
            width: 150,
            child: logosvg,
          ),
          const Divider(
            color: Colors.transparent,
            height: 15,
            thickness: 1,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_sharp),
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
              // TODO : Implement login
            },
          ),
          const Divider(
            color: Colors.transparent,
            height: 15,
            thickness: 1,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline_sharp),
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
              //TODO : Implement forgot password
            },
          ),
          const Divider(
            color: Colors.transparent,
            height: 15,
            thickness: 1,
          ),
          ElevatedButton(
            onPressed: () {
              // Handle login button press
            },
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Handle forgot password button press
            },
            child: Text('Forgot your Password?'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    )
        //Login container end
        ;
  }
}
