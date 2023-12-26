import 'package:flutter/material.dart';

class Margine extends StatelessWidget {
  const Margine({super.key, required this.margin, required this.child});

  final EdgeInsetsGeometry margin;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: margin,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: child,
    );
  }
}
