import 'package:flutter/material.dart';

enum ContrastPreference {
  none,
  light,
  dark,
}

class ColorHelpers {
  static int fromHexString(String argbHexString) {
    String useString = argbHexString;
    if (useString.startsWith("#")) {
      useString = useString.substring(1); // trim the starting '#'
    }
    if (useString.length < 8) {
      useString = "FF" + useString;
    }
    if (!useString.startsWith("0x")) {
      useString = "0x" + useString;
    }
    return int.parse(useString);
  }

  static final double _kMinContrastModifierRange = 0.35;
  static final double _kMaxContrastModifierRange = 0.65;

  /// Returns black or white depending on whether the source color is darker
  /// or lighter. If darker, will return white. If lighter, will return
  /// black. If the color is within 35-65% of the spectrum and a prefer
  /// value is specified, then white or black will be preferred.
  static Color blackOrWhiteContrastColor(Color sourceColor,
      {ContrastPreference prefer = ContrastPreference.none}) {
    // Will return a value between 0.0 (black) and 1.0 (white)
    double value = (((sourceColor.red * 299.0) +
        (sourceColor.green * 587.0) +
        (sourceColor.blue * 114.0)) /
        1000.0) /
        255.0;
    if (prefer != ContrastPreference.none) {
      if (value >= _kMinContrastModifierRange &&
          value <= _kMaxContrastModifierRange) {
        return prefer == ContrastPreference.light
            ? new Color(0xFFFFFFFF)
            : new Color(0xFF000000);
      }
    }
    return value > 0.6 ? new Color(0xFF000000) : new Color(0xFFFFFFFF);
  }
}


class CurrentTheme{

  static const MainAccentColor =  Color(0xFFff8f00);//ffd9b3);
  static const PrimaryColor =  Color(0xFFff8f00);
  static const PrimaryLightColor =  Color(0xFFffc046);
  static const PrimaryDarkColor =  Color(0xFFc56000);
  static const DarkAccentColor =  Color(0xFFff8c00);
  static const SecondaryAccentColor =  Color(0xFF808080);
  static const SecondaryColor =  Color(0xFF2e7c31);
  static const SecondaryLightColor =  Color(0xFF60ac5d);
  static const SecondaryDarkColor =  Color(0xFF004f04);
  static const BackgroundColor =  Color(0xFFFFFFFF);
  static const NormalTextColor =  Color(0xFF404040);
  static const DisableTextColor =  Color(0xFF808080);
  static const InvertedTextColor =  Color(0xFF808080);
  static const InvertedDisableColor =  Color(0xFF808080);
  static const ShadeColor = Color(0xFFDDDDDD) ;//Color(0xFFc3c0bb);
  static const ErrorColor =  Color(0xFFFF0000);
  static const WarningColor =  Color(0xFFFFDDDD);
  static const ListColor =  Color(0xFF708090);
  static const floatColor =  Color(0xFF708090);
 // static const HomeColor =  Color(0xFF142634); //Color(0xFFd4d8dd);
  static const HomeColor =  Color(0xFFDBDBDB);
  
}

