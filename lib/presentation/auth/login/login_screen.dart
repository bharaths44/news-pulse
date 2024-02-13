import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/background_img.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  //final LoginController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[200],
      body: Stack(
        alignment: Alignment.center,
        children: [
          BgImage(),
          LoginCard(),
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
