import 'package:flutter/material.dart';
import 'package:widget_second_challenge/domain/model/SquareColor.dart';

class Rectangle extends StatelessWidget {
  final SquareColor color;
  final Icon? icon;

  const Rectangle({super.key, required this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(color.value),
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: icon
    );
  }
}
