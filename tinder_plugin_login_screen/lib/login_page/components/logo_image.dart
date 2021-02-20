import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  static const logoPath = 'assets/images/tinder_flame_white.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Image.asset(logoPath),
    );
  }
}