import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    final String bgimage = 'assets/images/bg_image.svg';
    final Widget bgimagesvg = SvgPicture.asset(
      bgimage,
      fit: BoxFit.cover,
    );
    return Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: bgimagesvg);
  }
}
