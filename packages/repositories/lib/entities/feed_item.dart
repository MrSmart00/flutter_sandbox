
import 'feed_enclosure.dart';

class FeedItem {
  final String title;
  final String pubDate;
  final String link;
  final String guid;
  final String author;
  final String thumbnail;
  final String description;
  final String content;
  final FeedEnclosure enclosure;
  final List<String> categories;

  FeedItem({
    required this.title,
    required this.pubDate,
    required this.link,
    required this.guid,
    required this.author,
    required this.thumbnail,
    required this.description,
    required this.content,
    required this.enclosure,
    required this.categories,
  });

  factory FeedItem.fromJson(Map<String, dynamic> json) {
    return FeedItem(
      title: json['title'] as String,
      pubDate: json['pubDate'] as String,
      link: json['link'] as String,
      guid: json['guid'] as String,
      author: json['author'] as String,
      thumbnail: json['thumbnail'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      enclosure: FeedEnclosure.fromJson(
        json['enclosure'] as Map<String, dynamic>,
      ),
      categories: List<String>.from(json['categories'] as Iterable<dynamic>),
    );
  }
}
