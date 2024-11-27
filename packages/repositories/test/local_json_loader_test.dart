import 'package:app_repository/entities/feed.dart';
import 'package:app_repository/services/local_json_loader.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_asset_bundle.dart';

void main() {
  test('LocalJsonLoader fetches and parses JSON correctly', () async {
    const String mockJson = '''
    {
        "status": "ok",
        "feed": {
            "url": "https://example.com/rss/feed.xml",
            "title": "Example Tech Blog",
            "link": "https://example.com/",
            "author": "",
            "description": "最新の技術とソフトウェア開発に関するブログです。",
            "image": "https://picsum.photos/300/300"
        },
        "items": [
            {
                "title": "機械学習入門",
                "pubDate": "2024-11-26 10:00:00",
                "link": "https://example.com/posts/2024-11-26-introduction-to-machine-learning/",
                "guid": "https://example.com/posts/2024-11-26-introduction-to-machine-learning/",
                "author": "John Doe",
                "thumbnail": "https://picsum.photos/300/300",
                "description": "機械学習の基本概念と技術についての入門ガイド。",
                "content": "機械学習は、データから学習し、明示的にプログラムされることなくパフォーマンスを向上させる人工知能の一分野です。この記事では、機械学習の基本、教師あり学習と教師なし学習、そして一般的なアルゴリズムについて説明します。",
                "enclosure": {
                    "link": "https://picsum.photos/300/300",
                    "type": "image/png"
                },
                "categories": ["機械学習", "AI"]
            },
            {
                "title": "React入門",
                "pubDate": "2024-11-25 10:00:00",
                "link": "https://example.com/posts/2024-11-25-introduction-to-react/",
                "guid": "https://example.com/posts/2024-11-25-introduction-to-react/",
                "author": "Jane Smith",
                "thumbnail": "https://picsum.photos/300/300",
                "description": "Reactを使ったウェブアプリケーション開発の基礎。",
                "content": "ReactはFacebookによって開発されたJavaScriptライブラリで、ユーザーインターフェースを構築するために使用されます。この記事では、Reactの基本的な概念と、そのコンポーネントベースのアーキテクチャを紹介します。",
                "enclosure": {
                    "link": "https://picsum.photos/300/300",
                    "type": "image/png"
                },
                "categories": ["ウェブ開発", "JavaScript", "React"]
            }
        ]
    }
    ''';

    final mockAssetBundle = MockAssetBundle({
      'assets/mock.json': mockJson,
    });

    final feed = await LocalJsonLoader(assetBundle: mockAssetBundle).fetch(
      'assets/mock.json',
      (json) => Feed.fromJson(json),
    );

    expect(feed.status, 'ok');
    expect(feed.feed.title, 'Example Tech Blog');
    expect(feed.feed.url, 'https://example.com/rss/feed.xml');
    expect(feed.feed.description, '最新の技術とソフトウェア開発に関するブログです。');
    expect(feed.items.length, 2);

    final firstItem = feed.items[0];
    expect(firstItem.title, '機械学習入門');
    expect(firstItem.link, 'https://example.com/posts/2024-11-26-introduction-to-machine-learning/');
    expect(firstItem.pubDate, '2024-11-26 10:00:00');
    expect(firstItem.author, 'John Doe');
    expect(firstItem.categories, ['機械学習', 'AI']);

    final secondItem = feed.items[1];
    expect(secondItem.title, 'React入門');
    expect(secondItem.link, 'https://example.com/posts/2024-11-25-introduction-to-react/');
    expect(secondItem.pubDate, '2024-11-25 10:00:00');
    expect(secondItem.author, 'Jane Smith');
    expect(secondItem.categories, ['ウェブ開発', 'JavaScript', 'React']);
  });
}
