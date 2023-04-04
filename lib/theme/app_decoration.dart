import 'package:flutter/material.dart';
import 'package:basecodegetx/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get txtFillOrangeA700 => BoxDecoration(
        color: ColorConstant.orangeA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder38 = BorderRadius.circular(
    getHorizontalSize(
      38,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.
//
// double get strokeAlignInside => BorderSide.strokeAlignInside;
//
// double get strokeAlignCenter => BorderSide.strokeAlignCenter;
//
// double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
