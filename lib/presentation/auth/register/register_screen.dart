import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/auth/register/widgets/bg_image.dart';
import 'package:getx_clean_architecture/presentation/auth/register/widgets/continue_button.dart';
import 'package:getx_clean_architecture/presentation/auth/register/widgets/phone_no_form.dart';

import 'widgets/register_logo.dart';
import 'widgets/register_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
        children: [
          RegisterBgImage(),
          SafeArea(
            child: Center(
              child: Container(
                padding: EdgeInsets.only(
                    left: Get.size.width * 0.13, right: Get.size.width * 0.13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RegisterLogo(),
                    RegisterText(),
                    Column(
                      children: [
                        PhoneNumForm(),
                        const SizedBox(
                          height: 20,
                        ),
                        ContinueButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
