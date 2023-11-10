import 'package:flutter/material.dart';

class TaskImage extends StatelessWidget {
  const TaskImage({
    super.key,
    required this.photo,
  });

  final String photo;

  @override
  Widget build(BuildContext context) {
    return photo.contains("http")
        ? Image.network(
            photo,
            fit: BoxFit.cover,
          )
        : Image.asset(
            photo,
            fit: BoxFit.cover,
          );
  }
}
