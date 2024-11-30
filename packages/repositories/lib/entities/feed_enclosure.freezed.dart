// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_enclosure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedEnclosure _$FeedEnclosureFromJson(Map<String, dynamic> json) {
  return _FeedEnclosure.fromJson(json);
}

/// @nodoc
mixin _$FeedEnclosure {
  String get link => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this FeedEnclosure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedEnclosure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedEnclosureCopyWith<FeedEnclosure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEnclosureCopyWith<$Res> {
  factory $FeedEnclosureCopyWith(
          FeedEnclosure value, $Res Function(FeedEnclosure) then) =
      _$FeedEnclosureCopyWithImpl<$Res, FeedEnclosure>;
  @useResult
  $Res call({String link, String type});
}

/// @nodoc
class _$FeedEnclosureCopyWithImpl<$Res, $Val extends FeedEnclosure>
    implements $FeedEnclosureCopyWith<$Res> {
  _$FeedEnclosureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedEnclosure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedEnclosureImplCopyWith<$Res>
    implements $FeedEnclosureCopyWith<$Res> {
  factory _$$FeedEnclosureImplCopyWith(
          _$FeedEnclosureImpl value, $Res Function(_$FeedEnclosureImpl) then) =
      __$$FeedEnclosureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link, String type});
}

/// @nodoc
class __$$FeedEnclosureImplCopyWithImpl<$Res>
    extends _$FeedEnclosureCopyWithImpl<$Res, _$FeedEnclosureImpl>
    implements _$$FeedEnclosureImplCopyWith<$Res> {
  __$$FeedEnclosureImplCopyWithImpl(
      _$FeedEnclosureImpl _value, $Res Function(_$FeedEnclosureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEnclosure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? type = null,
  }) {
    return _then(_$FeedEnclosureImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedEnclosureImpl implements _FeedEnclosure {
  const _$FeedEnclosureImpl({required this.link, required this.type});

  factory _$FeedEnclosureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedEnclosureImplFromJson(json);

  @override
  final String link;
  @override
  final String type;

  @override
  String toString() {
    return 'FeedEnclosure(link: $link, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedEnclosureImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, link, type);

  /// Create a copy of FeedEnclosure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedEnclosureImplCopyWith<_$FeedEnclosureImpl> get copyWith =>
      __$$FeedEnclosureImplCopyWithImpl<_$FeedEnclosureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedEnclosureImplToJson(
      this,
    );
  }
}

abstract class _FeedEnclosure implements FeedEnclosure {
  const factory _FeedEnclosure(
      {required final String link,
      required final String type}) = _$FeedEnclosureImpl;

  factory _FeedEnclosure.fromJson(Map<String, dynamic> json) =
      _$FeedEnclosureImpl.fromJson;

  @override
  String get link;
  @override
  String get type;

  /// Create a copy of FeedEnclosure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedEnclosureImplCopyWith<_$FeedEnclosureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
