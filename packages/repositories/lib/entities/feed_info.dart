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
      url: json['url'],
      title: json['title'],
      link: json['link'],
      author: json['author'],
      description: json['description'],
      image: json['image'],
    );
  }
}
