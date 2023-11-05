import 'package:flutter/material.dart';
import 'package:widget_second_challenge/domain/model/SquareColor.dart';
import 'package:widget_second_challenge/presentation/component/square.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Square(color: first),
          Square(color: second),
          Square(color: third),
        ],
      ),
    );
  }
}
