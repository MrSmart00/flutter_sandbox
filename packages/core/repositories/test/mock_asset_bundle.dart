import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class MockAssetBundle extends CachingAssetBundle {
  MockAssetBundle(this._mockAssets);
  final Map<String, String> _mockAssets;

  @override
  Future<ByteData> load(String key) async {
    final assetString = _mockAssets[key];
    if (assetString == null) {
      throw FlutterError('Unable to load asset: $key');
    }
    final encoded = utf8.encode(assetString);
    return ByteData.view(Uint8List.fromList(encoded).buffer);
  }

  @override
  Future<String> loadString(String key, {bool cache = true}) async {
    final assetString = _mockAssets[key];
    if (assetString == null) {
      throw FlutterError('Unable to load asset: $key');
    }
    return assetString;
  }
}
