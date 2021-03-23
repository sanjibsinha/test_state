import 'package:flutter/material.dart';

class NewToDo extends StatelessWidget {
  NewToDo({Key key, this.addTodo}) : super(key: key);

  final Function addTodo;

  final titleController = TextEditingController();
  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.white24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
            ),
            TextField(
              controller: taskController,
            ),
            TextButton(
              onPressed: () {
                addTodo(
                  titleController.text,
                  taskController.text,
                );
              },
              child: Text('Add ToDo Title and Task'),
            ),
          ],
        ),
      ),
    );
  }
}
