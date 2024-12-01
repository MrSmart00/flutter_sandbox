import 'package:flutter_test/flutter_test.dart';
import 'package:app_core_app/count_notifier.dart';

void main() {
  group('CountNotifier', () {
    test('initial counter value should be 0', () {
      final countNotifier = CountNotifier();
      expect(countNotifier.counter.value, 0);
    });

    test('increment should increment counter value by 1', () {
      final countNotifier = CountNotifier();
      countNotifier.increment();
      expect(countNotifier.counter.value, 1);
    });

    test('reset should set counter value to 0', () {
      final countNotifier = CountNotifier();
      countNotifier.increment(); // counter = 1
      countNotifier.reset();
      expect(countNotifier.counter.value, 0);
    });
  });
}