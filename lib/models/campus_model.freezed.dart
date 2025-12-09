// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CampusCall _$CampusCallFromJson(Map<String, dynamic> json) {
  return _CampusCall.fromJson(json);
}

/// @nodoc
mixin _$CampusCall {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get addressId => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get schoolId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get timestamp => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this CampusCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampusCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampusCallCopyWith<CampusCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampusCallCopyWith<$Res> {
  factory $CampusCallCopyWith(
    CampusCall value,
    $Res Function(CampusCall) then,
  ) = _$CampusCallCopyWithImpl<$Res, CampusCall>;
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) int? addressId,
    @HiveField(3) int? schoolId,
    @HiveField(4) String? description,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  });
}

/// @nodoc
class _$CampusCallCopyWithImpl<$Res, $Val extends CampusCall>
    implements $CampusCallCopyWith<$Res> {
  _$CampusCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampusCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? addressId = freezed,
    Object? schoolId = freezed,
    Object? description = freezed,
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
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            addressId:
                freezed == addressId
                    ? _value.addressId
                    : addressId // ignore: cast_nullable_to_non_nullable
                        as int?,
            schoolId:
                freezed == schoolId
                    ? _value.schoolId
                    : schoolId // ignore: cast_nullable_to_non_nullable
                        as int?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CampusCallImplCopyWith<$Res>
    implements $CampusCallCopyWith<$Res> {
  factory _$$CampusCallImplCopyWith(
    _$CampusCallImpl value,
    $Res Function(_$CampusCallImpl) then,
  ) = __$$CampusCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) int? addressId,
    @HiveField(3) int? schoolId,
    @HiveField(4) String? description,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  });
}

/// @nodoc
class __$$CampusCallImplCopyWithImpl<$Res>
    extends _$CampusCallCopyWithImpl<$Res, _$CampusCallImpl>
    implements _$$CampusCallImplCopyWith<$Res> {
  __$$CampusCallImplCopyWithImpl(
    _$CampusCallImpl _value,
    $Res Function(_$CampusCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CampusCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? addressId = freezed,
    Object? schoolId = freezed,
    Object? description = freezed,
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _$CampusCallImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        addressId:
            freezed == addressId
                ? _value.addressId
                : addressId // ignore: cast_nullable_to_non_nullable
                    as int?,
        schoolId:
            freezed == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                    as int?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
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
class _$CampusCallImpl extends _CampusCall {
  _$CampusCallImpl({
    @HiveField(0) this.id,
    @HiveField(1) this.name,
    @HiveField(2) this.addressId,
    @HiveField(3) this.schoolId,
    @HiveField(4) this.description,
    @HiveField(5) this.timestamp,
    @HiveField(6) this.isDeleted,
  }) : super._();

  factory _$CampusCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampusCallImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final int? addressId;
  @override
  @HiveField(3)
  final int? schoolId;
  @override
  @HiveField(4)
  final String? description;
  @override
  @HiveField(5)
  final int? timestamp;
  @override
  @HiveField(6)
  final bool? isDeleted;

  @override
  String toString() {
    return 'CampusCall(id: $id, name: $name, addressId: $addressId, schoolId: $schoolId, description: $description, timestamp: $timestamp, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampusCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.description, description) ||
                other.description == description) &&
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
    name,
    addressId,
    schoolId,
    description,
    timestamp,
    isDeleted,
  );

  /// Create a copy of CampusCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampusCallImplCopyWith<_$CampusCallImpl> get copyWith =>
      __$$CampusCallImplCopyWithImpl<_$CampusCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampusCallImplToJson(this);
  }
}

abstract class _CampusCall extends CampusCall {
  factory _CampusCall({
    @HiveField(0) final int? id,
    @HiveField(1) final String? name,
    @HiveField(2) final int? addressId,
    @HiveField(3) final int? schoolId,
    @HiveField(4) final String? description,
    @HiveField(5) final int? timestamp,
    @HiveField(6) final bool? isDeleted,
  }) = _$CampusCallImpl;
  _CampusCall._() : super._();

  factory _CampusCall.fromJson(Map<String, dynamic> json) =
      _$CampusCallImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  int? get addressId;
  @override
  @HiveField(3)
  int? get schoolId;
  @override
  @HiveField(4)
  String? get description;
  @override
  @HiveField(5)
  int? get timestamp;
  @override
  @HiveField(6)
  bool? get isDeleted;

  /// Create a copy of CampusCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampusCallImplCopyWith<_$CampusCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
