import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RegisterBgImage extends StatelessWidget {
  const RegisterBgImage({super.key});

  @override
  Widget build(BuildContext context) {
    final String bgimage = 'assets/images/register_screen_bg.svg';
    final Widget bgimagesvg = SvgPicture.asset(
      bgimage,
      fit: BoxFit.cover,
    );
    return Container(
        alignment: Alignment.topCenter,
        height: Get.size.height,
        width: Get.size.width,
        child: bgimagesvg);
  }
}
