import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_project/components/difficulty.dart';
import 'package:second_project/components/task_image.dart';

class Task extends StatefulWidget {
  final String name;
  final String photo;
  final int difficulty;
  int level = 0;

  Task({
    super.key,
    required this.name,
    required this.photo,
    required this.difficulty,
  });

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  Color currentColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: currentColor,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: TaskImage(photo: widget.photo),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              widget.name,
                              style: const TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Difficulty(
                            difficultyLevel: widget.difficulty,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (_isBarFull()) {
                                widget.level = 1;
                                currentColor = getRandomColor();
                              } else {
                                widget.level++;
                              }
                            });
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        child: LinearProgressIndicator(
                          value: (widget.difficulty > 0)
                              ? (widget.level / widget.difficulty) / 10
                              : 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Level: ${widget.level}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool _isBarFull() {
    return widget.level == (widget.difficulty * 10);
  }

  Color getRandomColor() {
    Random random = Random();
    // Generate a random ARGB value
    int r = random.nextInt(256); // Red value
    int g = random.nextInt(256); // Green value
    int b = random.nextInt(256); // Blue value
    Color generatedColor = Color.fromRGBO(r, g, b, 1);
    return (generatedColor == currentColor) ? getRandomColor() : generatedColor;
  }
}
