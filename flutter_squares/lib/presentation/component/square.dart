import 'package:flutter/cupertino.dart';

import '../../domain/model/SquareColor.dart';

class Square extends StatelessWidget {
  final SquareColor color;

  const Square({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Color(color.value),
    );
  }
}
