import 'package:flutter/material.dart';
import 'package:tinder_login/layout/my_colors.dart';

class WhiteText extends StatelessWidget {
  final String data;
  final double size;
  final FontWeight fontWeight;

  WhiteText(this.data, {this.size = 18, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: MyColors.whiteFlame,
      ),
    );
  }
}
