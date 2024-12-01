// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedInfoImpl _$$FeedInfoImplFromJson(Map<String, dynamic> json) =>
    _$FeedInfoImpl(
      url: json['url'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$FeedInfoImplToJson(_$FeedInfoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'link': instance.link,
      'author': instance.author,
      'description': instance.description,
      'image': instance.image,
    };
