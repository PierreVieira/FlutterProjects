import 'package:flutter/material.dart';
import 'package:flutter_squares/domain/model/SquareColor.dart';
import 'package:flutter_squares/presentation/component/square.dart';

class CustomRow extends StatelessWidget {
  final SquareColor first;
  final SquareColor second;
  final SquareColor third;

  const CustomRow(
      {super.key,
      required this.first,
      required this.second,
      required this.third});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Square(color: first),
        Square(color: second),
        Square(color: third),
      ],
    );
  }
}
