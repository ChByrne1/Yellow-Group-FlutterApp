// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NewsCall _$NewsCallFromJson(Map<String, dynamic> json) {
  return _NewsCall.fromJson(json);
}

/// @nodoc
mixin _$NewsCall {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get schoolId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get headline => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get content => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get datePublished => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get author => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get timestamp => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this NewsCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsCallCopyWith<NewsCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCallCopyWith<$Res> {
  factory $NewsCallCopyWith(NewsCall value, $Res Function(NewsCall) then) =
      _$NewsCallCopyWithImpl<$Res, NewsCall>;
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) int? schoolId,
    @HiveField(2) String? headline,
    @HiveField(3) String? content,
    @HiveField(4) DateTime? datePublished,
    @HiveField(5) String? author,
    @HiveField(6) int? timestamp,
    @HiveField(7) bool? isDeleted,
  });
}

/// @nodoc
class _$NewsCallCopyWithImpl<$Res, $Val extends NewsCall>
    implements $NewsCallCopyWith<$Res> {
  _$NewsCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? headline = freezed,
    Object? content = freezed,
    Object? datePublished = freezed,
    Object? author = freezed,
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            schoolId:
                freezed == schoolId
                    ? _value.schoolId
                    : schoolId // ignore: cast_nullable_to_non_nullable
                        as int?,
            headline:
                freezed == headline
                    ? _value.headline
                    : headline // ignore: cast_nullable_to_non_nullable
                        as String?,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String?,
            datePublished:
                freezed == datePublished
                    ? _value.datePublished
                    : datePublished // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            author:
                freezed == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String?,
            timestamp:
                freezed == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as int?,
            isDeleted:
                freezed == isDeleted
                    ? _value.isDeleted
                    : isDeleted // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NewsCallImplCopyWith<$Res>
    implements $NewsCallCopyWith<$Res> {
  factory _$$NewsCallImplCopyWith(
    _$NewsCallImpl value,
    $Res Function(_$NewsCallImpl) then,
  ) = __$$NewsCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) int? schoolId,
    @HiveField(2) String? headline,
    @HiveField(3) String? content,
    @HiveField(4) DateTime? datePublished,
    @HiveField(5) String? author,
    @HiveField(6) int? timestamp,
    @HiveField(7) bool? isDeleted,
  });
}

/// @nodoc
class __$$NewsCallImplCopyWithImpl<$Res>
    extends _$NewsCallCopyWithImpl<$Res, _$NewsCallImpl>
    implements _$$NewsCallImplCopyWith<$Res> {
  __$$NewsCallImplCopyWithImpl(
    _$NewsCallImpl _value,
    $Res Function(_$NewsCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? headline = freezed,
    Object? content = freezed,
    Object? datePublished = freezed,
    Object? author = freezed,
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _$NewsCallImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        schoolId:
            freezed == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                    as int?,
        headline:
            freezed == headline
                ? _value.headline
                : headline // ignore: cast_nullable_to_non_nullable
                    as String?,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String?,
        datePublished:
            freezed == datePublished
                ? _value.datePublished
                : datePublished // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        author:
            freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String?,
        timestamp:
            freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as int?,
        isDeleted:
            freezed == isDeleted
                ? _value.isDeleted
                : isDeleted // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsCallImpl extends _NewsCall {
  const _$NewsCallImpl({
    @HiveField(0) this.id,
    @HiveField(1) this.schoolId,
    @HiveField(2) this.headline,
    @HiveField(3) this.content,
    @HiveField(4) this.datePublished,
    @HiveField(5) this.author,
    @HiveField(6) this.timestamp,
    @HiveField(7) this.isDeleted,
  }) : super._();

  factory _$NewsCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsCallImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final int? schoolId;
  @override
  @HiveField(2)
  final String? headline;
  @override
  @HiveField(3)
  final String? content;
  @override
  @HiveField(4)
  final DateTime? datePublished;
  @override
  @HiveField(5)
  final String? author;
  @override
  @HiveField(6)
  final int? timestamp;
  @override
  @HiveField(7)
  final bool? isDeleted;

  @override
  String toString() {
    return 'NewsCall(id: $id, schoolId: $schoolId, headline: $headline, content: $content, datePublished: $datePublished, author: $author, timestamp: $timestamp, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.datePublished, datePublished) ||
                other.datePublished == datePublished) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    schoolId,
    headline,
    content,
    datePublished,
    author,
    timestamp,
    isDeleted,
  );

  /// Create a copy of NewsCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsCallImplCopyWith<_$NewsCallImpl> get copyWith =>
      __$$NewsCallImplCopyWithImpl<_$NewsCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsCallImplToJson(this);
  }
}

abstract class _NewsCall extends NewsCall {
  const factory _NewsCall({
    @HiveField(0) final int? id,
    @HiveField(1) final int? schoolId,
    @HiveField(2) final String? headline,
    @HiveField(3) final String? content,
    @HiveField(4) final DateTime? datePublished,
    @HiveField(5) final String? author,
    @HiveField(6) final int? timestamp,
    @HiveField(7) final bool? isDeleted,
  }) = _$NewsCallImpl;
  const _NewsCall._() : super._();

  factory _NewsCall.fromJson(Map<String, dynamic> json) =
      _$NewsCallImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  int? get schoolId;
  @override
  @HiveField(2)
  String? get headline;
  @override
  @HiveField(3)
  String? get content;
  @override
  @HiveField(4)
  DateTime? get datePublished;
  @override
  @HiveField(5)
  String? get author;
  @override
  @HiveField(6)
  int? get timestamp;
  @override
  @HiveField(7)
  bool? get isDeleted;

  /// Create a copy of NewsCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsCallImplCopyWith<_$NewsCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
