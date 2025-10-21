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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventItem _$EventItemFromJson(Map<String, dynamic> json) {
  return _EventItem.fromJson(json);
}

/// @nodoc
mixin _$EventItem {
  int? get id => throw _privateConstructorUsedError;
  String? get Title => throw _privateConstructorUsedError;
  String? get Description => throw _privateConstructorUsedError;
  DateTime? get Start => throw _privateConstructorUsedError;
  DateTime? get End => throw _privateConstructorUsedError;
  int? get CampusId => throw _privateConstructorUsedError;
  String? get Location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventItemCopyWith<EventItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventItemCopyWith<$Res> {
  factory $EventItemCopyWith(EventItem value, $Res Function(EventItem) then) =
      _$EventItemCopyWithImpl<$Res, EventItem>;
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
class _$EventItemCopyWithImpl<$Res, $Val extends EventItem>
    implements $EventItemCopyWith<$Res> {
  _$EventItemCopyWithImpl(this._value, this._then);

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
abstract class _$$EventItemImplCopyWith<$Res>
    implements $EventItemCopyWith<$Res> {
  factory _$$EventItemImplCopyWith(
          _$EventItemImpl value, $Res Function(_$EventItemImpl) then) =
      __$$EventItemImplCopyWithImpl<$Res>;
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
class __$$EventItemImplCopyWithImpl<$Res>
    extends _$EventItemCopyWithImpl<$Res, _$EventItemImpl>
    implements _$$EventItemImplCopyWith<$Res> {
  __$$EventItemImplCopyWithImpl(
      _$EventItemImpl _value, $Res Function(_$EventItemImpl) _then)
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
    return _then(_$EventItemImpl(
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
class _$EventItemImpl implements _EventItem {
  const _$EventItemImpl(
      {this.id,
      this.Title,
      this.Description,
      this.Start,
      this.End,
      this.CampusId,
      this.Location});

  factory _$EventItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventItemImplFromJson(json);

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
    return 'EventItem(id: $id, Title: $Title, Description: $Description, Start: $Start, End: $End, CampusId: $CampusId, Location: $Location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventItemImpl &&
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
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      __$$EventItemImplCopyWithImpl<_$EventItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventItemImplToJson(
      this,
    );
  }
}

abstract class _EventItem implements EventItem {
  const factory _EventItem(
      {final int? id,
      final String? Title,
      final String? Description,
      final DateTime? Start,
      final DateTime? End,
      final int? CampusId,
      final String? Location}) = _$EventItemImpl;

  factory _EventItem.fromJson(Map<String, dynamic> json) =
      _$EventItemImpl.fromJson;

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
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
