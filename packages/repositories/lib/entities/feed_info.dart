class FeedInfo {
  final String url;
  final String title;
  final String link;
  final String author;
  final String description;
  final String image;

  FeedInfo({
    required this.url,
    required this.title,
    required this.link,
    required this.author,
    required this.description,
    required this.image,
  });

  factory FeedInfo.fromJson(Map<String, dynamic> json) {
    return FeedInfo(
      url: json['url'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );
  }
}
