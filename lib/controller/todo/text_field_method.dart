import 'package:flutter/material.dart';

Card textFieldMethod(String inputTitle, String inputTask) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.white24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              onChanged: (title) {
                inputTitle = title;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Task',
              ),
              onChanged: (task) {
                inputTask = task;
              },
            ),
            TextButton(
              onPressed: () {
                print(inputTitle);
                print(inputTask);
              },
              child: Text('Add ToDo Title and Task'),
            ),
          ],
        ),
      ),
    );
  }
}
