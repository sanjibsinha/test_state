import 'package:flutter/material.dart';
import '../controller/todo/taking_inputs.dart';
import '../controller/todo/getting_todo_list.dart';
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
      body: TestToDo(),
    );
  }
}

class TestToDo extends StatefulWidget {
  TestToDo({Key key}) : super(key: key);

  @override
  _TestToDoState createState() => _TestToDoState();
}

class _TestToDoState extends State<TestToDo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ToDoMainView(),
    );
  }
}

class ToDoMainView extends StatefulWidget {
  const ToDoMainView({Key key}) : super(key: key);

  @override
  _ToDoMainViewState createState() => _ToDoMainViewState();
}

class _ToDoMainViewState extends State<ToDoMainView> {
  final List<ToDo> todoList = [
    ToDo(
      id: '1',
      title: 'Marketing',
      task: 'Fruits',
      // task: ['Fruits', 'Busicuits', 'Vaegetables', 'Groceries'],
      date: DateTime.now(),
    ),
    ToDo(
      id: '2',
      title: 'Book Writing',
      task: 'State in Flutter',
      // task: ['State in Flutter', 'Immutable Flutter'],
      date: DateTime.now(),
    ),
  ];

  void addToDoList(String idText, String inputTxTile, String inputTxTask) {
    final inputText = ToDo(
      id: idText,
      title: inputTxTile,
      task: inputTxTask,
      date: DateTime.now(),
    );
    setState(() {
      todoList.add(inputText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          TakingInputs(
            addTasks: addToDoList,
          ),
          GettingToDoList(todoList),
        ],
      ),
    );
  }
}
