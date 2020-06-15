import 'package:mobx/mobx.dart';

class Counter {
  Counter() {
    increment = Action(_increment);
    decrement = Action(_decrement);
  }

  final _value = Observable(0);
  
  int get value => _value.value;

  set value(int newValue) => _value.value = newValue;

  Action increment;
  Action decrement;

  void _increment() {
    _value.value++;
  }
  void _decrement() {
    _value.value--;
  }
}