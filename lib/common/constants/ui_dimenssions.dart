import 'dart:ui';

class UIDimensions {
  static final pixelRatio = window.devicePixelRatio;
  static final physicalScreenSize = window.physicalSize;

  static final physicalWidth = physicalScreenSize.width;
  static final physicalHeight = physicalScreenSize.height;

  // Size in logical pixels
  static final logicalScreenSize = window.physicalSize / pixelRatio;
  static final logicalWidth = logicalScreenSize.width;
  static final logicalHeight = logicalScreenSize.height;

  static const double universalSpacingS = 10;
  static const double universalSpacingM = 15;

  static const double universalSpacingL = 20;
  static const double universalSpacingXL = 30;

  static const double elevatedButtonHeight = 55;
    static const double textFormFiledHeight = 50;

}
