import 'package:flutter/cupertino.dart';
import 'package:widget_second_challenge/domain/model/SquareColor.dart';

class Square extends StatelessWidget {
  final SquareColor color;

  const Square({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      color: Color(color.value),
    );
  }
}
