
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
      title: json['title'],
      pubDate: json['pubDate'],
      link: json['link'],
      guid: json['guid'],
      author: json['author'],
      thumbnail: json['thumbnail'],
      description: json['description'],
      content: json['content'],
      enclosure: FeedEnclosure.fromJson(json['enclosure']),
      categories: List<String>.from(json['categories']),
    );
  }
}
