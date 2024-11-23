class CounterLogic {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
  }

  void reset() {
    _counter = 0;
  }
}
