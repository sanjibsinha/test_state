import 'package:flutter/material.dart';

class TestApp extends StatelessWidget {
  const TestApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0,), child: Text('First'),);
  }
}
class TestAppOne extends StatelessWidget {
  const TestAppOne({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0,), child: Text('Second'),);
  }
}

class TestAppTwo extends StatelessWidget {
  const TestAppTwo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0,), child: Text('Third'),);
  }
}

class TestAppThree extends StatelessWidget {
  const TestAppThree({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0,), child: Text('Fourth'),);
  }
}

class TestAppFour extends StatelessWidget {
  const TestAppFour({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0,), child: Text('Five'),);
  }
}