import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/presentation/auth/register/widgets/bg_image.dart';

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
        children: [RegisterBgImage()],
      ),
    );
  }
}
