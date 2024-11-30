// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedInfo _$FeedInfoFromJson(Map<String, dynamic> json) {
  return _FeedInfo.fromJson(json);
}

/// @nodoc
mixin _$FeedInfo {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this FeedInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedInfoCopyWith<FeedInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedInfoCopyWith<$Res> {
  factory $FeedInfoCopyWith(FeedInfo value, $Res Function(FeedInfo) then) =
      _$FeedInfoCopyWithImpl<$Res, FeedInfo>;
  @useResult
  $Res call(
      {String url,
      String title,
      String link,
      String author,
      String description,
      String image});
}

/// @nodoc
class _$FeedInfoCopyWithImpl<$Res, $Val extends FeedInfo>
    implements $FeedInfoCopyWith<$Res> {
  _$FeedInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? link = null,
    Object? author = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedInfoImplCopyWith<$Res>
    implements $FeedInfoCopyWith<$Res> {
  factory _$$FeedInfoImplCopyWith(
          _$FeedInfoImpl value, $Res Function(_$FeedInfoImpl) then) =
      __$$FeedInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String title,
      String link,
      String author,
      String description,
      String image});
}

/// @nodoc
class __$$FeedInfoImplCopyWithImpl<$Res>
    extends _$FeedInfoCopyWithImpl<$Res, _$FeedInfoImpl>
    implements _$$FeedInfoImplCopyWith<$Res> {
  __$$FeedInfoImplCopyWithImpl(
      _$FeedInfoImpl _value, $Res Function(_$FeedInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? link = null,
    Object? author = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$FeedInfoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedInfoImpl implements _FeedInfo {
  const _$FeedInfoImpl(
      {required this.url,
      required this.title,
      required this.link,
      required this.author,
      required this.description,
      required this.image});

  factory _$FeedInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedInfoImplFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final String link;
  @override
  final String author;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'FeedInfo(url: $url, title: $title, link: $link, author: $author, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedInfoImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, title, link, author, description, image);

  /// Create a copy of FeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedInfoImplCopyWith<_$FeedInfoImpl> get copyWith =>
      __$$FeedInfoImplCopyWithImpl<_$FeedInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedInfoImplToJson(
      this,
    );
  }
}

abstract class _FeedInfo implements FeedInfo {
  const factory _FeedInfo(
      {required final String url,
      required final String title,
      required final String link,
      required final String author,
      required final String description,
      required final String image}) = _$FeedInfoImpl;

  factory _FeedInfo.fromJson(Map<String, dynamic> json) =
      _$FeedInfoImpl.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  String get link;
  @override
  String get author;
  @override
  String get description;
  @override
  String get image;

  /// Create a copy of FeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedInfoImplCopyWith<_$FeedInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
