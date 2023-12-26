import 'package:flutter/material.dart';

class TextFW700 extends StatelessWidget {
  const TextFW700(
      {super.key,
      required this.text,
      this.textcolor,
      this.fontWeight,
      required this.fontSize,
      this.textAlign,
      this.fontFamily});
  final String text;
  final Color? textcolor;
  final FontWeight? fontWeight;
  final double fontSize;
  final TextAlign? textAlign;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.w700,
          color: textcolor ?? Colors.black,
          fontFamily: fontFamily),
    );
  }
}

class TextFW500 extends StatelessWidget {
  const TextFW500(
      {super.key,
      required this.text,
      this.textcolor,
      this.fontWeight,
      required this.fontSize,
      this.textAlign,
      this.fontStyle,
      this.fontFamily});
  final String text;
  final Color? textcolor;
  final FontWeight? fontWeight;
  final double fontSize;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: textcolor ?? Colors.black,
      ),
    );
  }
}

class TextFW400 extends StatelessWidget {
  const TextFW400(
      {super.key,
      required this.text,
      this.textcolor,
      this.fontWeight,
      required this.fontSize,
      this.textAlign,
      this.fontStyle,
      this.fontFamily});
  final String text;
  final Color? textcolor;
  final FontWeight? fontWeight;
  final double fontSize;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textcolor ?? Colors.black,
      ),
    );
  }
}
