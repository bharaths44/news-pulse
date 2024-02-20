import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Add your state management logic here
}

class LoginOptions extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  LoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCircleAvatar(FontAwesomeIcons.facebook, Colors.blue, () {
            // Handle Facebook sign in
          }),
          buildCircleAvatar(FontAwesomeIcons.google, Colors.red, () {
            // Handle Google sign in
          }),
          buildCircleAvatar(FontAwesomeIcons.twitter, Colors.lightBlue, () {
            // Handle Twitter sign in
          }),
          buildCircleAvatar(FontAwesomeIcons.linkedin, Colors.blueAccent, () {
            // Handle LinkedIn sign in
          }),
        ],
      ),
    );
  }

  Widget buildCircleAvatar(IconData icon, Color color, VoidCallback onTap) {
    double size = Get.size.width * 0.13; // Adjust the multiplier as needed

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: color, width: 2),
        ),
        child: Icon(icon,
            color: color, size: size * 0.5), // Adjust the multiplier as needed
      ),
    );
  }
}
