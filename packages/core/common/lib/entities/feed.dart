import 'package:app_core_common/entities/feed_info.dart';
import 'package:app_core_common/entities/feed_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
class Feed with _$Feed {
  const factory Feed({
    required String status,
    required FeedInfo feed,
    required List<FeedItem> items,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
