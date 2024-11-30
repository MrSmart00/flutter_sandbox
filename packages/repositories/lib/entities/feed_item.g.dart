// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedItemImpl _$$FeedItemImplFromJson(Map<String, dynamic> json) =>
    _$FeedItemImpl(
      title: json['title'] as String,
      pubDate: json['pubDate'] as String,
      link: json['link'] as String,
      guid: json['guid'] as String,
      author: json['author'] as String,
      thumbnail: json['thumbnail'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      enclosure:
          FeedEnclosure.fromJson(json['enclosure'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FeedItemImplToJson(_$FeedItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'pubDate': instance.pubDate,
      'link': instance.link,
      'guid': instance.guid,
      'author': instance.author,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'content': instance.content,
      'enclosure': instance.enclosure,
      'categories': instance.categories,
    };
