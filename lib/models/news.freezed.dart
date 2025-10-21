// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchoolNews _$SchoolNewsFromJson(Map<String, dynamic> json) {
  return _SchoolNews.fromJson(json);
}

/// @nodoc
mixin _$SchoolNews {
  int? get id => throw _privateConstructorUsedError;
  int? get SchoolId => throw _privateConstructorUsedError;
  String? get Headline => throw _privateConstructorUsedError;
  String? get Content => throw _privateConstructorUsedError;
  DateTime? get DatePublished => throw _privateConstructorUsedError;
  String? get Author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolNewsCopyWith<SchoolNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolNewsCopyWith<$Res> {
  factory $SchoolNewsCopyWith(
          SchoolNews value, $Res Function(SchoolNews) then) =
      _$SchoolNewsCopyWithImpl<$Res, SchoolNews>;
  @useResult
  $Res call(
      {int? id,
      int? SchoolId,
      String? Headline,
      String? Content,
      DateTime? DatePublished,
      String? Author});
}

/// @nodoc
class _$SchoolNewsCopyWithImpl<$Res, $Val extends SchoolNews>
    implements $SchoolNewsCopyWith<$Res> {
  _$SchoolNewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? SchoolId = freezed,
    Object? Headline = freezed,
    Object? Content = freezed,
    Object? DatePublished = freezed,
    Object? Author = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      SchoolId: freezed == SchoolId
          ? _value.SchoolId
          : SchoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      Headline: freezed == Headline
          ? _value.Headline
          : Headline // ignore: cast_nullable_to_non_nullable
              as String?,
      Content: freezed == Content
          ? _value.Content
          : Content // ignore: cast_nullable_to_non_nullable
              as String?,
      DatePublished: freezed == DatePublished
          ? _value.DatePublished
          : DatePublished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      Author: freezed == Author
          ? _value.Author
          : Author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolNewsImplCopyWith<$Res>
    implements $SchoolNewsCopyWith<$Res> {
  factory _$$SchoolNewsImplCopyWith(
          _$SchoolNewsImpl value, $Res Function(_$SchoolNewsImpl) then) =
      __$$SchoolNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? SchoolId,
      String? Headline,
      String? Content,
      DateTime? DatePublished,
      String? Author});
}

/// @nodoc
class __$$SchoolNewsImplCopyWithImpl<$Res>
    extends _$SchoolNewsCopyWithImpl<$Res, _$SchoolNewsImpl>
    implements _$$SchoolNewsImplCopyWith<$Res> {
  __$$SchoolNewsImplCopyWithImpl(
      _$SchoolNewsImpl _value, $Res Function(_$SchoolNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? SchoolId = freezed,
    Object? Headline = freezed,
    Object? Content = freezed,
    Object? DatePublished = freezed,
    Object? Author = freezed,
  }) {
    return _then(_$SchoolNewsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      SchoolId: freezed == SchoolId
          ? _value.SchoolId
          : SchoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      Headline: freezed == Headline
          ? _value.Headline
          : Headline // ignore: cast_nullable_to_non_nullable
              as String?,
      Content: freezed == Content
          ? _value.Content
          : Content // ignore: cast_nullable_to_non_nullable
              as String?,
      DatePublished: freezed == DatePublished
          ? _value.DatePublished
          : DatePublished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      Author: freezed == Author
          ? _value.Author
          : Author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolNewsImpl implements _SchoolNews {
  const _$SchoolNewsImpl(
      {this.id,
      this.SchoolId,
      this.Headline,
      this.Content,
      this.DatePublished,
      this.Author});

  factory _$SchoolNewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolNewsImplFromJson(json);

  @override
  final int? id;
  @override
  final int? SchoolId;
  @override
  final String? Headline;
  @override
  final String? Content;
  @override
  final DateTime? DatePublished;
  @override
  final String? Author;

  @override
  String toString() {
    return 'SchoolNews(id: $id, SchoolId: $SchoolId, Headline: $Headline, Content: $Content, DatePublished: $DatePublished, Author: $Author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolNewsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.SchoolId, SchoolId) ||
                other.SchoolId == SchoolId) &&
            (identical(other.Headline, Headline) ||
                other.Headline == Headline) &&
            (identical(other.Content, Content) || other.Content == Content) &&
            (identical(other.DatePublished, DatePublished) ||
                other.DatePublished == DatePublished) &&
            (identical(other.Author, Author) || other.Author == Author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, SchoolId, Headline, Content, DatePublished, Author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolNewsImplCopyWith<_$SchoolNewsImpl> get copyWith =>
      __$$SchoolNewsImplCopyWithImpl<_$SchoolNewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolNewsImplToJson(
      this,
    );
  }
}

abstract class _SchoolNews implements SchoolNews {
  const factory _SchoolNews(
      {final int? id,
      final int? SchoolId,
      final String? Headline,
      final String? Content,
      final DateTime? DatePublished,
      final String? Author}) = _$SchoolNewsImpl;

  factory _SchoolNews.fromJson(Map<String, dynamic> json) =
      _$SchoolNewsImpl.fromJson;

  @override
  int? get id;
  @override
  int? get SchoolId;
  @override
  String? get Headline;
  @override
  String? get Content;
  @override
  DateTime? get DatePublished;
  @override
  String? get Author;
  @override
  @JsonKey(ignore: true)
  _$$SchoolNewsImplCopyWith<_$SchoolNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
