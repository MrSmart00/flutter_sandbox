import 'package:test/test.dart';
import '../lib/src/something.dart';

void main() {
  group('StringListManager', () {
    late StringListManager manager;

    setUp(() {
      manager = StringListManager();
    });

    test('add should add a string to the list', () {
      manager.add('test');
      expect(manager.getAll(), contains('test'));
    });

    test('add should throw an error if the string is empty', () {
      expect(() => manager.add(''), throwsArgumentError);
    });

    test('add should throw an error if the string is already added', () {
      manager.add('test');
      expect(() => manager.add('test'), throwsArgumentError);
    });

    test('remove should remove a string from the list', () {
      manager.add('test');
      manager.remove('test');
      expect(manager.getAll(), isNot(contains('test')));
    });

    test('getAll should return all strings in the list', () {
      manager.add('test1');
      manager.add('test2');
      expect(manager.getAll(), containsAll(['test1', 'test2']));
    });

    test('contains should return true if the string is in the list', () {
      manager.add('test');
      expect(manager.contains('test'), isTrue);
    });

    test('contains should return false if the string is not in the list', () {
      expect(manager.contains('test'), isFalse);
    });
  });
}
