import 'package:flutter/material.dart';

class TakingInputs extends StatelessWidget {
  TakingInputs({Key key, this.addTasks}) : super(key: key);

  final idController = TextEditingController();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  final Function addTasks;

  void submitTasks() {
    addTasks(idController.text, firstController.text, secondController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'ID of Task'),
            controller: idController,

            /// if we want number fields to be shown, then this feature
            /// comes very handy
            keyboardType: TextInputType.number,

            /// since onSubmitted passes a String as a convention we passed
            /// a data that we're actually not going to use
            ///
            //onSubmitted: (_) => submitTasks(),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Title of Task'),
            controller: firstController,

            //onSubmitted: (_) => submitTasks(),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Detail of Task'),
            controller: secondController,
            onSubmitted: (_) => submitTasks(),
          ),
          TextButton(
              onPressed: () {
                addTasks(idController.text, firstController.text,
                    secondController.text);
              },
              child: Text(
                'Add Names',
                style: Theme.of(context).textTheme.headline5,
              )),
        ],
      ),
    );
  }
}
