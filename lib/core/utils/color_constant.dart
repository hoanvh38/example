import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray20001 = fromHex('#a8aeb8');

  static Color black9007e = fromHex('#7e040415');

  static Color black90001 = fromHex('#000000');

  static Color blueGray200 = fromHex('#a8afb9');

  static Color black900 = fromHex('#040415');

  static Color orangeA700 = fromHex('#ff5b00');

  static Color blueGray9000c = fromHex('#0c323247');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#f9fafb');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
