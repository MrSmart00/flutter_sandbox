import 'package:flutter/material.dart';

class CountNotifier {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  ValueNotifier<int> get counter => _counter;

  void increment() {
    _counter.value++;
  }

  void reset() {
    _counter.value = 0;
  }
}
