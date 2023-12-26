import 'package:flutter/material.dart';

class CP extends StatelessWidget {
  const CP({super.key, required this.child, this.h, this.v});
  final Widget child;
  final double? h;
  final double? v;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: h ?? 0, vertical: v ?? 0),
      child: child,
    );
  }
}
