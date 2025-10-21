// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cafeteria_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CafeteriaItem _$CafeteriaItemFromJson(Map<String, dynamic> json) {
  return _CafeteriaItem.fromJson(json);
}

/// @nodoc
mixin _$CafeteriaItem {
  int? get id => throw _privateConstructorUsedError;
  String? get Title => throw _privateConstructorUsedError;
  String? get Description => throw _privateConstructorUsedError;
  DateTime? get Start => throw _privateConstructorUsedError;
  DateTime? get End => throw _privateConstructorUsedError;
  int? get CampusId => throw _privateConstructorUsedError;
  String? get Location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafeteriaItemCopyWith<CafeteriaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeteriaItemCopyWith<$Res> {
  factory $CafeteriaItemCopyWith(
          CafeteriaItem value, $Res Function(CafeteriaItem) then) =
      _$CafeteriaItemCopyWithImpl<$Res, CafeteriaItem>;
  @useResult
  $Res call(
      {int? id,
      String? Title,
      String? Description,
      DateTime? Start,
      DateTime? End,
      int? CampusId,
      String? Location});
}

/// @nodoc
class _$CafeteriaItemCopyWithImpl<$Res, $Val extends CafeteriaItem>
    implements $CafeteriaItemCopyWith<$Res> {
  _$CafeteriaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? Title = freezed,
    Object? Description = freezed,
    Object? Start = freezed,
    Object? End = freezed,
    Object? CampusId = freezed,
    Object? Location = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      Start: freezed == Start
          ? _value.Start
          : Start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      End: freezed == End
          ? _value.End
          : End // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      CampusId: freezed == CampusId
          ? _value.CampusId
          : CampusId // ignore: cast_nullable_to_non_nullable
              as int?,
      Location: freezed == Location
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CafeteriaItemImplCopyWith<$Res>
    implements $CafeteriaItemCopyWith<$Res> {
  factory _$$CafeteriaItemImplCopyWith(
          _$CafeteriaItemImpl value, $Res Function(_$CafeteriaItemImpl) then) =
      __$$CafeteriaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? Title,
      String? Description,
      DateTime? Start,
      DateTime? End,
      int? CampusId,
      String? Location});
}

/// @nodoc
class __$$CafeteriaItemImplCopyWithImpl<$Res>
    extends _$CafeteriaItemCopyWithImpl<$Res, _$CafeteriaItemImpl>
    implements _$$CafeteriaItemImplCopyWith<$Res> {
  __$$CafeteriaItemImplCopyWithImpl(
      _$CafeteriaItemImpl _value, $Res Function(_$CafeteriaItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? Title = freezed,
    Object? Description = freezed,
    Object? Start = freezed,
    Object? End = freezed,
    Object? CampusId = freezed,
    Object? Location = freezed,
  }) {
    return _then(_$CafeteriaItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      Start: freezed == Start
          ? _value.Start
          : Start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      End: freezed == End
          ? _value.End
          : End // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      CampusId: freezed == CampusId
          ? _value.CampusId
          : CampusId // ignore: cast_nullable_to_non_nullable
              as int?,
      Location: freezed == Location
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CafeteriaItemImpl implements _CafeteriaItem {
  const _$CafeteriaItemImpl(
      {this.id,
      this.Title,
      this.Description,
      this.Start,
      this.End,
      this.CampusId,
      this.Location});

  factory _$CafeteriaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CafeteriaItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? Title;
  @override
  final String? Description;
  @override
  final DateTime? Start;
  @override
  final DateTime? End;
  @override
  final int? CampusId;
  @override
  final String? Location;

  @override
  String toString() {
    return 'CafeteriaItem(id: $id, Title: $Title, Description: $Description, Start: $Start, End: $End, CampusId: $CampusId, Location: $Location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CafeteriaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.Title, Title) || other.Title == Title) &&
            (identical(other.Description, Description) ||
                other.Description == Description) &&
            (identical(other.Start, Start) || other.Start == Start) &&
            (identical(other.End, End) || other.End == End) &&
            (identical(other.CampusId, CampusId) ||
                other.CampusId == CampusId) &&
            (identical(other.Location, Location) ||
                other.Location == Location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, Title, Description, Start, End, CampusId, Location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CafeteriaItemImplCopyWith<_$CafeteriaItemImpl> get copyWith =>
      __$$CafeteriaItemImplCopyWithImpl<_$CafeteriaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CafeteriaItemImplToJson(
      this,
    );
  }
}

abstract class _CafeteriaItem implements CafeteriaItem {
  const factory _CafeteriaItem(
      {final int? id,
      final String? Title,
      final String? Description,
      final DateTime? Start,
      final DateTime? End,
      final int? CampusId,
      final String? Location}) = _$CafeteriaItemImpl;

  factory _CafeteriaItem.fromJson(Map<String, dynamic> json) =
      _$CafeteriaItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get Title;
  @override
  String? get Description;
  @override
  DateTime? get Start;
  @override
  DateTime? get End;
  @override
  int? get CampusId;
  @override
  String? get Location;
  @override
  @JsonKey(ignore: true)
  _$$CafeteriaItemImplCopyWith<_$CafeteriaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
