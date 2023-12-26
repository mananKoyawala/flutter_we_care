import 'package:flutter/material.dart';

class MyColor {
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color transparent = Colors.transparent;
  static Color blackO_15 = const Color(0xFF000000).withOpacity(0.15);
  static Color blackO1 = const Color(0xFF000000).withOpacity(0.1);
  static Color blackO2 = const Color(0xFF000000).withOpacity(0.2);
  static Color blackO7 = const Color(0xFF000000).withOpacity(0.7);
  static Color blackO8 = const Color(0xFF000000).withOpacity(0.8);
  static Color blackO9 = const Color(0xFF000000).withOpacity(0.9);
  static Color rippleColor = Colors.grey.shade500;
  static Color themeColor = const Color(0xFF419DF2);
  static Color themeColorO5 = const Color(0xFF419DF2).withOpacity(0.05);
  static Color backgroundColor = const Color(0xFFF4F4F4);
  static Color yellow = const Color(0xFFF2C94C);
  static Color textColor1 = const Color(0xFF828282);
  static Color textColor2 = const Color(0xFF333333);
  static Color textColor3 = const Color(0xFF4F4F4F);
  static Color textColor4 = const Color(0xFFF2F2F2);
}

class DP {
  static dHeight(BuildContext context, int dp) {
    return MediaQuery.of(context).size.height / dp;
  }

  static dWidth(BuildContext context, int dp) {
    return MediaQuery.of(context).size.width / dp;
  }

  static infinity(BuildContext context) {
    return double.infinity;
  }
}

class Nav {
  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  static closeDrawer(BuildContext context) {
    Scaffold.of(context).closeDrawer();
  }
}
