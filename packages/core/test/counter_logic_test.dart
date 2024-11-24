import 'package:test/test.dart';
import '../lib/src/counter_logic.dart';

void main() {
  group('CounterLogic', () {
    test('initial counter value should be 0', () {
      final counterLogic = CounterLogic();
      expect(counterLogic.counter, 0);
    });

    test('increment should increment counter value by 1', () {
      final counterLogic = CounterLogic();
      counterLogic.increment();
      expect(counterLogic.counter, 1);
    });

    test('reset should set counter value to 0', () {
      final counterLogic = CounterLogic();
      counterLogic.increment();
      counterLogic.reset();
      expect(counterLogic.counter, 0);
    });
  });
}
