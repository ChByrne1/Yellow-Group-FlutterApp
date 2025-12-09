// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annoucement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AnnoucementCall _$AnnoucementCallFromJson(Map<String, dynamic> json) {
  return _AnnoucementCall.fromJson(json);
}

/// @nodoc
mixin _$AnnoucementCall {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get message => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get datePosted => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get schoolId => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get timestamp => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this AnnoucementCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnoucementCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnoucementCallCopyWith<AnnoucementCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnoucementCallCopyWith<$Res> {
  factory $AnnoucementCallCopyWith(
    AnnoucementCall value,
    $Res Function(AnnoucementCall) then,
  ) = _$AnnoucementCallCopyWithImpl<$Res, AnnoucementCall>;
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? message,
    @HiveField(3) DateTime? datePosted,
    @HiveField(4) int? schoolId,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  });
}

/// @nodoc
class _$AnnoucementCallCopyWithImpl<$Res, $Val extends AnnoucementCall>
    implements $AnnoucementCallCopyWith<$Res> {
  _$AnnoucementCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnoucementCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? datePosted = freezed,
    Object? schoolId = freezed,
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
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
            datePosted:
                freezed == datePosted
                    ? _value.datePosted
                    : datePosted // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            schoolId:
                freezed == schoolId
                    ? _value.schoolId
                    : schoolId // ignore: cast_nullable_to_non_nullable
                        as int?,
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
abstract class _$$AnnoucementCallImplCopyWith<$Res>
    implements $AnnoucementCallCopyWith<$Res> {
  factory _$$AnnoucementCallImplCopyWith(
    _$AnnoucementCallImpl value,
    $Res Function(_$AnnoucementCallImpl) then,
  ) = __$$AnnoucementCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? message,
    @HiveField(3) DateTime? datePosted,
    @HiveField(4) int? schoolId,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  });
}

/// @nodoc
class __$$AnnoucementCallImplCopyWithImpl<$Res>
    extends _$AnnoucementCallCopyWithImpl<$Res, _$AnnoucementCallImpl>
    implements _$$AnnoucementCallImplCopyWith<$Res> {
  __$$AnnoucementCallImplCopyWithImpl(
    _$AnnoucementCallImpl _value,
    $Res Function(_$AnnoucementCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnnoucementCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? datePosted = freezed,
    Object? schoolId = freezed,
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _$AnnoucementCallImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
        datePosted:
            freezed == datePosted
                ? _value.datePosted
                : datePosted // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        schoolId:
            freezed == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                    as int?,
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
class _$AnnoucementCallImpl extends _AnnoucementCall {
  _$AnnoucementCallImpl({
    @HiveField(0) this.id,
    @HiveField(1) this.title,
    @HiveField(2) this.message,
    @HiveField(3) this.datePosted,
    @HiveField(4) this.schoolId,
    @HiveField(5) this.timestamp,
    @HiveField(6) this.isDeleted,
  }) : super._();

  factory _$AnnoucementCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnoucementCallImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? message;
  @override
  @HiveField(3)
  final DateTime? datePosted;
  @override
  @HiveField(4)
  final int? schoolId;
  @override
  @HiveField(5)
  final int? timestamp;
  @override
  @HiveField(6)
  final bool? isDeleted;

  @override
  String toString() {
    return 'AnnoucementCall(id: $id, title: $title, message: $message, datePosted: $datePosted, schoolId: $schoolId, timestamp: $timestamp, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnoucementCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
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
    title,
    message,
    datePosted,
    schoolId,
    timestamp,
    isDeleted,
  );

  /// Create a copy of AnnoucementCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnoucementCallImplCopyWith<_$AnnoucementCallImpl> get copyWith =>
      __$$AnnoucementCallImplCopyWithImpl<_$AnnoucementCallImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnoucementCallImplToJson(this);
  }
}

abstract class _AnnoucementCall extends AnnoucementCall {
  factory _AnnoucementCall({
    @HiveField(0) final int? id,
    @HiveField(1) final String? title,
    @HiveField(2) final String? message,
    @HiveField(3) final DateTime? datePosted,
    @HiveField(4) final int? schoolId,
    @HiveField(5) final int? timestamp,
    @HiveField(6) final bool? isDeleted,
  }) = _$AnnoucementCallImpl;
  _AnnoucementCall._() : super._();

  factory _AnnoucementCall.fromJson(Map<String, dynamic> json) =
      _$AnnoucementCallImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get message;
  @override
  @HiveField(3)
  DateTime? get datePosted;
  @override
  @HiveField(4)
  int? get schoolId;
  @override
  @HiveField(5)
  int? get timestamp;
  @override
  @HiveField(6)
  bool? get isDeleted;

  /// Create a copy of AnnoucementCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnoucementCallImplCopyWith<_$AnnoucementCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
