import 'package:app_core_common/entities/feed_enclosure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_item.freezed.dart';
part 'feed_item.g.dart';

@freezed
class FeedItem with _$FeedItem {
  const factory FeedItem({
    required String title,
    required String pubDate,
    required String link,
    required String guid,
    required String author,
    required String thumbnail,
    required String description,
    required String content,
    required FeedEnclosure enclosure,
    required List<String> categories,
  }) = _FeedItem;

  factory FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);
}
