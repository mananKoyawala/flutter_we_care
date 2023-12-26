import 'package:flutter/material.dart';

import 'RippleEffectContainer.dart';

class WhiteBGButton extends StatelessWidget {
  const WhiteBGButton({
    Key? key,
    required this.title,
    // required this.img,
    required this.onTap,
    required this.borderColor,
    required this.textColor,
    required this.height,
  }) : super(key: key);
  final String title;
  final Color borderColor;
  final Color textColor;
  final double height;
  // final Widget img;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClickEffect(
      borderRadius: BorderRadius.circular(4),
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 16, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
