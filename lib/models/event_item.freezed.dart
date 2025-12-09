// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EventCall _$EventCallFromJson(Map<String, dynamic> json) {
  return _EventCall.fromJson(json);
}

/// @nodoc
mixin _$EventCall {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get start => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get end => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get campusId => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get location => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get timestamp => throw _privateConstructorUsedError;
  @HiveField(8)
  bool? get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this EventCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCallCopyWith<EventCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCallCopyWith<$Res> {
  factory $EventCallCopyWith(EventCall value, $Res Function(EventCall) then) =
      _$EventCallCopyWithImpl<$Res, EventCall>;
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
    @HiveField(3) DateTime? start,
    @HiveField(4) DateTime? end,
    @HiveField(5) int? campusId,
    @HiveField(6) String? location,
    @HiveField(7) int? timestamp,
    @HiveField(8) bool? isDeleted,
  });
}

/// @nodoc
class _$EventCallCopyWithImpl<$Res, $Val extends EventCall>
    implements $EventCallCopyWith<$Res> {
  _$EventCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? campusId = freezed,
    Object? location = freezed,
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
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            start:
                freezed == start
                    ? _value.start
                    : start // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            end:
                freezed == end
                    ? _value.end
                    : end // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            campusId:
                freezed == campusId
                    ? _value.campusId
                    : campusId // ignore: cast_nullable_to_non_nullable
                        as int?,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EventCallImplCopyWith<$Res>
    implements $EventCallCopyWith<$Res> {
  factory _$$EventCallImplCopyWith(
    _$EventCallImpl value,
    $Res Function(_$EventCallImpl) then,
  ) = __$$EventCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
    @HiveField(3) DateTime? start,
    @HiveField(4) DateTime? end,
    @HiveField(5) int? campusId,
    @HiveField(6) String? location,
    @HiveField(7) int? timestamp,
    @HiveField(8) bool? isDeleted,
  });
}

/// @nodoc
class __$$EventCallImplCopyWithImpl<$Res>
    extends _$EventCallCopyWithImpl<$Res, _$EventCallImpl>
    implements _$$EventCallImplCopyWith<$Res> {
  __$$EventCallImplCopyWithImpl(
    _$EventCallImpl _value,
    $Res Function(_$EventCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? campusId = freezed,
    Object? location = freezed,
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _$EventCallImpl(
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
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        start:
            freezed == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        end:
            freezed == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        campusId:
            freezed == campusId
                ? _value.campusId
                : campusId // ignore: cast_nullable_to_non_nullable
                    as int?,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
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
class _$EventCallImpl extends _EventCall {
  _$EventCallImpl({
    @HiveField(0) this.id,
    @HiveField(1) this.title,
    @HiveField(2) this.description,
    @HiveField(3) this.start,
    @HiveField(4) this.end,
    @HiveField(5) this.campusId,
    @HiveField(6) this.location,
    @HiveField(7) this.timestamp,
    @HiveField(8) this.isDeleted,
  }) : super._();

  factory _$EventCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventCallImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final DateTime? start;
  @override
  @HiveField(4)
  final DateTime? end;
  @override
  @HiveField(5)
  final int? campusId;
  @override
  @HiveField(6)
  final String? location;
  @override
  @HiveField(7)
  final int? timestamp;
  @override
  @HiveField(8)
  final bool? isDeleted;

  @override
  String toString() {
    return 'EventCall(id: $id, title: $title, description: $description, start: $start, end: $end, campusId: $campusId, location: $location, timestamp: $timestamp, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.campusId, campusId) ||
                other.campusId == campusId) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
    description,
    start,
    end,
    campusId,
    location,
    timestamp,
    isDeleted,
  );

  /// Create a copy of EventCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCallImplCopyWith<_$EventCallImpl> get copyWith =>
      __$$EventCallImplCopyWithImpl<_$EventCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventCallImplToJson(this);
  }
}

abstract class _EventCall extends EventCall {
  factory _EventCall({
    @HiveField(0) final int? id,
    @HiveField(1) final String? title,
    @HiveField(2) final String? description,
    @HiveField(3) final DateTime? start,
    @HiveField(4) final DateTime? end,
    @HiveField(5) final int? campusId,
    @HiveField(6) final String? location,
    @HiveField(7) final int? timestamp,
    @HiveField(8) final bool? isDeleted,
  }) = _$EventCallImpl;
  _EventCall._() : super._();

  factory _EventCall.fromJson(Map<String, dynamic> json) =
      _$EventCallImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  DateTime? get start;
  @override
  @HiveField(4)
  DateTime? get end;
  @override
  @HiveField(5)
  int? get campusId;
  @override
  @HiveField(6)
  String? get location;
  @override
  @HiveField(7)
  int? get timestamp;
  @override
  @HiveField(8)
  bool? get isDeleted;

  /// Create a copy of EventCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventCallImplCopyWith<_$EventCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
