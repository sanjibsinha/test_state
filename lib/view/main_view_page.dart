import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_state/controller/main_controller.dart';
import 'package:test_state/model/change_string.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const MaterialApp(
        title: 'My App',
        home: const MyAppHome(),
      ),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const MyAppHomePage(),
    );
  }
}

class MyAppHomePage extends StatelessWidget {
  const MyAppHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChangeNotifierProvider(
        create: (context) => ChangeString(),
        child: AnExpensiveWidget(),
      ),
    );
  }
}

class AnExpensiveWidget extends StatelessWidget {
  const AnExpensiveWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TestApp(),
      const SizedBox(height: 10.0,),
      const TestAppOne(),
      const SizedBox(height: 10.0,),
      const TestAppTwo(),
      const SizedBox(height: 10.0,),
      MyAppHomeFirst(),
      const SizedBox(height: 10.0,),
      const TestAppThree(),
      const SizedBox(height: 10.0,),
      const TestAppFour(),
      const SizedBox(height: 10.0,),

    ],);
  }
}
class MyAppHomeFirst extends StatelessWidget {
  const MyAppHomeFirst({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameChanging = Provider.of<ChangeString>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Column(
            children: [
              Text(
                nameChanging.name,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              FloatingActionButton(
                onPressed: () {
                  nameChanging.changeName();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                height: 10.0,
              ),
              FloatingActionButton(
                onPressed: () {
                  nameChanging.clearName();
                },
                child: const Icon(Icons.minimize),
              ),
            ],
          )),
    );
  }
}
