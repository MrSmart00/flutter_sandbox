import 'feed_info.dart';
import 'feed_item.dart';

class Feed {
  final String status;
  final FeedInfo feed;
  final List<FeedItem> items;

  Feed({
    required this.status,
    required this.feed,
    required this.items,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
      status: json['status'] as String,
      feed: FeedInfo.fromJson(json['feed'] as Map<String, dynamic>),
      items: (json['items'] as List)
        .map((item) => FeedItem.fromJson(item as Map<String, dynamic>)).toList()
    );
  }
}
