import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterLogo extends StatelessWidget {
  const RegisterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final String registerimage = 'assets/images/register.svg';
    final Widget registerimagesvg = SvgPicture.asset(
      registerimage,
      fit: BoxFit.contain,
    );
    return Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        child: registerimagesvg);
  }
}
