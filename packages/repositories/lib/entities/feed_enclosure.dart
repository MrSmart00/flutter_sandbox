import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_enclosure.freezed.dart';
part 'feed_enclosure.g.dart';

@freezed
class FeedEnclosure with _$FeedEnclosure {
  const factory FeedEnclosure({
    required String link,
    required String type,
  }) = _FeedEnclosure;

  factory FeedEnclosure.fromJson(Map<String, dynamic> json) =>
      _$FeedEnclosureFromJson(json);
}
