import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_info.freezed.dart';
part 'feed_info.g.dart';

@freezed
class FeedInfo with _$FeedInfo {
  const factory FeedInfo({
    required String url,
    required String title,
    required String link,
    required String author,
    required String description,
    required String image,
  }) = _FeedInfo;

  factory FeedInfo.fromJson(Map<String, dynamic> json) =>
      _$FeedInfoFromJson(json);
}
