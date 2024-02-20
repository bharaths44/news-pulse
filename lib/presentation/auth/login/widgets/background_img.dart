import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginBgImage extends StatelessWidget {
  const LoginBgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String bgimage = 'assets/images/bg_image.svg';
    final Widget bgimagesvg = SvgPicture.asset(
      bgimage,
      fit: BoxFit.fill,
    );
    return ClipPath(
      clipper: SemiCircleClipper(),
      child: Container(
        alignment: Alignment.topCenter,
        height: Get.size.height,
        width: Get.size.width,
        child: bgimagesvg,
      ),
    );
  }
}

class SemiCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 2.5);
    path.arcToPoint(
      Offset(size.width, size.height / 2.5),
      radius: Radius.circular(size.width),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
