class FeedEnclosure {
  final String link;
  final String type;

  FeedEnclosure({
    required this.link,
    required this.type,
  });

  factory FeedEnclosure.fromJson(Map<String, dynamic> json) {
    return FeedEnclosure(
      link: json['link'],
      type: json['type'],
    );
  }
}
