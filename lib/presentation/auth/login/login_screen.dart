import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/background_img.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/login_card.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/login_options.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/no_account.dart';
import 'package:getx_clean_architecture/presentation/auth/login/widgets/or_sign_in_with.dart';

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
          LoginBgImage(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginCard(),
                SigninWith(),
                LoginOptions(),
                NoAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
