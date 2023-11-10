import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLevel;

  const Difficulty({
    super.key,
    required this.difficultyLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildStarIcon(index + 1)),
    );
  }

  Widget _buildStarIcon(int starNumber) {
    return StarIcon(
      color: getColor(starNumber),
    );
  }

  Color? getColor(int starNumber) {
    return difficultyLevel >= starNumber ? Colors.blue : Colors.blue[100];
  }
}

class StarIcon extends StatelessWidget {
  final Color? color;

  const StarIcon({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
      size: 15,
    );
  }
}
