import 'package:flutter/material.dart';
import '../controller/todo/text_field_method.dart';
import '../controller/todo/first_column.dart';
import '../controller/todo/second_column.dart';
import '../model/to_do.dart';

class ToDoMain extends StatelessWidget {
  const ToDoMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      debugShowCheckedModeBanner: false,
      home: ToDoMainFirst(),
    );
  }
}

class ToDoMainFirst extends StatelessWidget {
  const ToDoMainFirst({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To Do List',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ToDoMainView(),
    );
  }
}

class ToDoMainView extends StatelessWidget {
  const ToDoMainView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<ToDo> todoList = [
      ToDo(
        idOfToDo: 1,
        title: 'Marketing',
        task: 'Fruits',
        // task: ['Fruits', 'Busicuits', 'Vaegetables', 'Groceries'],
        date: DateTime.now(),
      ),
      ToDo(
        idOfToDo: 2,
        title: 'Book Writing',
        task: 'State in Flutter',
        // task: ['State in Flutter', 'Immutable Flutter'],
        date: DateTime.now(),
      ),
    ];
    String inputTitle;
    String inputTask;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: todoList.map((td) {
          return Card(
            elevation: 20.0,
            child: Wrap(
              children: [
                textFieldMethod(inputTitle, inputTask),
                firstColumn(td),
                secondColumn(td),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  