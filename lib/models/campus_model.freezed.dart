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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Campus _$CampusFromJson(Map<String, dynamic> json) {
  return _Campus.fromJson(json);
}

/// @nodoc
mixin _$Campus {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get addressId => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampusCopyWith<Campus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampusCopyWith<$Res> {
  factory $CampusCopyWith(Campus value, $Res Function(Campus) then) =
      _$CampusCopyWithImpl<$Res, Campus>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? addressId,
      int? schoolId,
      String? description});
}

/// @nodoc
class _$CampusCopyWithImpl<$Res, $Val extends Campus>
    implements $CampusCopyWith<$Res> {
  _$CampusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? addressId = freezed,
    Object? schoolId = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampusImplCopyWith<$Res> implements $CampusCopyWith<$Res> {
  factory _$$CampusImplCopyWith(
          _$CampusImpl value, $Res Function(_$CampusImpl) then) =
      __$$CampusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? addressId,
      int? schoolId,
      String? description});
}

/// @nodoc
class __$$CampusImplCopyWithImpl<$Res>
    extends _$CampusCopyWithImpl<$Res, _$CampusImpl>
    implements _$$CampusImplCopyWith<$Res> {
  __$$CampusImplCopyWithImpl(
      _$CampusImpl _value, $Res Function(_$CampusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? addressId = freezed,
    Object? schoolId = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CampusImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampusImpl implements _Campus {
  const _$CampusImpl(
      {this.id, this.name, this.addressId, this.schoolId, this.description});

  factory _$CampusImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampusImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? addressId;
  @override
  final int? schoolId;
  @override
  final String? description;

  @override
  String toString() {
    return 'Campus(id: $id, name: $name, addressId: $addressId, schoolId: $schoolId, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, addressId, schoolId, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampusImplCopyWith<_$CampusImpl> get copyWith =>
      __$$CampusImplCopyWithImpl<_$CampusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampusImplToJson(
      this,
    );
  }
}

abstract class _Campus implements Campus {
  const factory _Campus(
      {final int? id,
      final String? name,
      final int? addressId,
      final int? schoolId,
      final String? description}) = _$CampusImpl;

  factory _Campus.fromJson(Map<String, dynamic> json) = _$CampusImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get addressId;
  @override
  int? get schoolId;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CampusImplCopyWith<_$CampusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
