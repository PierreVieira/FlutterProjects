import 'package:flutter/material.dart';
import 'package:second_project/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task(
      name: 'Learn Flutter',
      difficulty: 3,
      photo: 'assets/images/dash.png',
    ),
    Task(
      name: 'Ride a Bike',
      difficulty: 2,
      photo: 'assets/images/bike.webp',
    ),
    Task(
      name: 'Meditation',
      difficulty: 5,
      photo: 'assets/images/meditor.jpeg',
    ),
    Task(
      name: 'Read a Book',
      difficulty: 4,
      photo: 'assets/images/book.jpg',
    ),
    Task(
      name: 'Play a Game',
      difficulty: 1,
      photo: 'assets/images/game.jpg',
    ),
  ];

  void newTask(
      {required String name, required String photo, required int difficulty}) {
    taskList.add(Task(name: name, photo: photo, difficulty: difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
