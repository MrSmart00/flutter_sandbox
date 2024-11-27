
import 'dart:convert';

import 'package:flutter/services.dart';

class LocalJsonLoader {
  final AssetBundle assetBundle;

  LocalJsonLoader({AssetBundle? assetBundle})
      : assetBundle = assetBundle ?? rootBundle;

  Future<T> fetch<T>(String path, T Function(Map<String, dynamic>) fromJson) async {
    final jsonString = await assetBundle.loadString(path);
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
    return fromJson(jsonMap);
  }
}
