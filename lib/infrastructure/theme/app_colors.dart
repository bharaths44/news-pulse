import 'dart:ui';

class AppColors {
  static Color primaryColor = fromHex('#441562');
  static Color successGreen = fromHex('#62DF85');
  static Color errorRed = fromHex('#F36157');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
