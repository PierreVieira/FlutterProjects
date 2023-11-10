import 'package:flutter/material.dart';
import 'package:second_project/components/task.dart';
import 'package:second_project/data/task_inherited.dart';

import 'form_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("TO-DO's"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 8, bottom: 72),
        children: TaskInherited.of(context).taskList
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
