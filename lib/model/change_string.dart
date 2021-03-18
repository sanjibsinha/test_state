import 'package:flutter/material.dart';

class ChangeString extends ChangeNotifier {
  String name = 'Original Name';
  void changeName() {
    name = 'Chnaged Name';
    notifyListeners();
  }
  void clearName() {
    name = 'Original Name';
    notifyListeners();
  }
}