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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Annoucement _$AnnoucementFromJson(Map<String, dynamic> json) {
  return _Annoucement.fromJson(json);
}

/// @nodoc
mixin _$Annoucement {
  int? get id => throw _privateConstructorUsedError;
  int? get addressId => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get iconName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnoucementCopyWith<Annoucement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnoucementCopyWith<$Res> {
  factory $AnnoucementCopyWith(
          Annoucement value, $Res Function(Annoucement) then) =
      _$AnnoucementCopyWithImpl<$Res, Annoucement>;
  @useResult
  $Res call(
      {int? id,
      int? addressId,
      int? schoolId,
      String? description,
      String? iconName});
}

/// @nodoc
class _$AnnoucementCopyWithImpl<$Res, $Val extends Annoucement>
    implements $AnnoucementCopyWith<$Res> {
  _$AnnoucementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addressId = freezed,
    Object? schoolId = freezed,
    Object? description = freezed,
    Object? iconName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnoucementImplCopyWith<$Res>
    implements $AnnoucementCopyWith<$Res> {
  factory _$$AnnoucementImplCopyWith(
          _$AnnoucementImpl value, $Res Function(_$AnnoucementImpl) then) =
      __$$AnnoucementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? addressId,
      int? schoolId,
      String? description,
      String? iconName});
}

/// @nodoc
class __$$AnnoucementImplCopyWithImpl<$Res>
    extends _$AnnoucementCopyWithImpl<$Res, _$AnnoucementImpl>
    implements _$$AnnoucementImplCopyWith<$Res> {
  __$$AnnoucementImplCopyWithImpl(
      _$AnnoucementImpl _value, $Res Function(_$AnnoucementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addressId = freezed,
    Object? schoolId = freezed,
    Object? description = freezed,
    Object? iconName = freezed,
  }) {
    return _then(_$AnnoucementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnoucementImpl implements _Annoucement {
  const _$AnnoucementImpl(
      {this.id,
      this.addressId,
      this.schoolId,
      this.description,
      this.iconName});

  factory _$AnnoucementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnoucementImplFromJson(json);

  @override
  final int? id;
  @override
  final int? addressId;
  @override
  final int? schoolId;
  @override
  final String? description;
  @override
  final String? iconName;

  @override
  String toString() {
    return 'Annoucement(id: $id, addressId: $addressId, schoolId: $schoolId, description: $description, iconName: $iconName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnoucementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, addressId, schoolId, description, iconName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnoucementImplCopyWith<_$AnnoucementImpl> get copyWith =>
      __$$AnnoucementImplCopyWithImpl<_$AnnoucementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnoucementImplToJson(
      this,
    );
  }
}

abstract class _Annoucement implements Annoucement {
  const factory _Annoucement(
      {final int? id,
      final int? addressId,
      final int? schoolId,
      final String? description,
      final String? iconName}) = _$AnnoucementImpl;

  factory _Annoucement.fromJson(Map<String, dynamic> json) =
      _$AnnoucementImpl.fromJson;

  @override
  int? get id;
  @override
  int? get addressId;
  @override
  int? get schoolId;
  @override
  String? get description;
  @override
  String? get iconName;
  @override
  @JsonKey(ignore: true)
  _$$AnnoucementImplCopyWith<_$AnnoucementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
