import 'package:flutter/material.dart';
import '../../model/to_do.dart';
import 'package:intl/intl.dart';

Column secondColumn(ToDo td) {
  return Column(
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
          child: Text(
            '${td.task}',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
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
            DateFormat.yMMMd().format(td.date),
          ),
        ),
      ),
    ],
  );
}
