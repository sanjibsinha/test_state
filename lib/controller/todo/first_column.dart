import 'package:flutter/material.dart';
import '../../model/to_do.dart';

Column firstColumn(ToDo td) {
  return Column(
    children: [
      Card(
        elevation: 10.0,
        margin: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: Container(
          margin: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
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
          child: Text(
            '${td.idOfToDo}',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ),
      ),
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
          child: Text(
            '${td.title}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
