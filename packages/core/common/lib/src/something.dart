class StringListManager {
  final List<String> _strings = [];

  /// 文字列をリストに追加します。
  /// IN: 追加する文字列 [value]
  void add(String value) {
    if (value.isEmpty) {
      throw ArgumentError('value is empty');
    }
    if (_strings.contains(value)) {
      throw ArgumentError('value is already added');
    }
    print('add: $value');
    _strings.add(value);
  }

  /// リストから文字列を削除します。
  /// IN: 削除する文字列 [value]
  void remove(String value) {
    _strings.remove(value);
  }

  /// リスト内のすべての文字列を取得します。
  /// OUT: 文字列のリスト
  List<String> getAll() {
    return _strings;
  }

  /// リストに特定の文字列が含まれているかを確認します。
  /// IN: 確認する文字列 [value]
  /// OUT: 含まれている場合は true、そうでない場合は false
  bool contains(String value) {
    return _strings.contains(value);
  }
}
