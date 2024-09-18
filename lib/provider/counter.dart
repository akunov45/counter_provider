import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 1;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
}
