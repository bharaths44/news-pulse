import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle register button press
      },
      child: Text('Continue',
          style: TextStyle(
            fontSize: 18,
          )),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shadowColor: Colors.transparent,
        fixedSize: Size(Get.size.width * 0.87, 55),
        // padding: EdgeInsets.only(
        //     left: Get.size.width * 0.87,
        //     right: Get.size.width * 0.87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }
}
