import 'package:flutter/material.dart';
import 'package:widget_second_challenge/domain/model/SquareColor.dart';
import 'package:widget_second_challenge/presentation/component/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.check,
          color: Colors.white,
        ),
        title: const Text(
          'Flutter: First Steps',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: const Color(0XFFD0DDED),
        child: ListView(
          children: const [
            CustomRow(
              first: SquareColor.white,
              second: SquareColor.pink,
              third: SquareColor.lightBlue,
            ),
            CustomRow(
              first: SquareColor.magenta,
              second: SquareColor.purple,
              third: SquareColor.darkBlue,
            ),
            CustomRow(
              first: SquareColor.pink,
              second: SquareColor.yellow,
              third: SquareColor.blue,
            ),
            CustomRow(
              first: SquareColor.red,
              second: SquareColor.white,
              third: SquareColor.green,
            ),
          ],
        ),
      ),
    );
  }
}
