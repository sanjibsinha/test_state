import 'package:flutter/material.dart';
import '../../model/to_do.dart';

class GettingToDoList extends StatelessWidget {
  final List<ToDo> tdl;
  GettingToDoList(this.tdl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Column(
                children: [
                  Card(
                    elevation: 10.0,
                    margin: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(
                        8.0,
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
                        tdl[index].id,
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
                        tdl[index].title,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                    tdl[index].task,
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
                  child: Text(tdl[index].date.toString(),
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ],
          );
        },
        itemCount: tdl.length,
      ),
    );
  }
}
/**
 * 
 * Text(tdl[index].id.toString()),
              Text(tdl[index].title),
              Text(tdl[index].task),
              Text(tdl[index].date.toString()),
 */