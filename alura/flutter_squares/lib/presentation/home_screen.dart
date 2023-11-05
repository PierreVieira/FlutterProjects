import 'package:flutter/material.dart';
import 'package:flutter_squares/domain/model/SquareColor.dart';

import 'component/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.black,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomRow(
            first: SquareColor.red,
            second: SquareColor.orange,
            third: SquareColor.yellow,
          ),
          CustomRow(
            first: SquareColor.green,
            second: SquareColor.blue,
            third: SquareColor.darkBlue,
          ),
          CustomRow(
            first: SquareColor.purple,
            second: SquareColor.magenta,
            third: SquareColor.white,
          ),
        ],
      ),
    );
  }
}
