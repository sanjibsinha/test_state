import 'package:flutter/material.dart';
import 'package:test_state/model/to_do.dart';

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
        id: 't1',
        title: 'Market',
        task: 'Buying Fruits',
        date: DateTime.now(),
      ),
      ToDo(
        id: 't2',
        title: 'Book',
        task: 'Writing State in Flutter',
        date: DateTime.now(),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: todoList.map((td) {
          return Row(
            children: [
              Card(
                margin: const EdgeInsets.only(
                  left: 8.0,
                  right: 36.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 8.0,
                    right: 16.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(4278190080),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(td.title),
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(4278190080),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Text(td.task),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(
                        20.0,
                      ),
                      padding: const EdgeInsets.all(
                        18.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(4278190080),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Text(
                        td.date.toString(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
