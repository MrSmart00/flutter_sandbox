
import 'dart:convert';

import 'package:app_repository/entities/feed.dart';
import 'package:flutter/services.dart';

class LocalJsonLoader {
  final AssetBundle assetBundle;

  LocalJsonLoader({AssetBundle? assetBundle})
      : assetBundle = assetBundle ?? rootBundle;

  Future<Feed> fetch() async {
    final jsonString = await assetBundle.loadString('assets/rss.json');
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
    return Feed.fromJson(jsonMap);
  }
}
