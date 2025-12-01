// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  List<Annoucement>? get schoolAnnoucements =>
      throw _privateConstructorUsedError;
  List<Campus>? get campuses => throw _privateConstructorUsedError;
  List<EventCall>? get schoolEvents => throw _privateConstructorUsedError;
  List<SchoolNews>? get schoolNews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? website,
      String? phoneNumber,
      List<Annoucement>? schoolAnnoucements,
      List<Campus>? campuses,
      List<EventCall>? schoolEvents,
      List<SchoolNews>? schoolNews});
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? phoneNumber = freezed,
    Object? schoolAnnoucements = freezed,
    Object? campuses = freezed,
    Object? schoolEvents = freezed,
    Object? schoolNews = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolAnnoucements: freezed == schoolAnnoucements
          ? _value.schoolAnnoucements
          : schoolAnnoucements // ignore: cast_nullable_to_non_nullable
              as List<Annoucement>?,
      campuses: freezed == campuses
          ? _value.campuses
          : campuses // ignore: cast_nullable_to_non_nullable
              as List<Campus>?,
      schoolEvents: freezed == schoolEvents
          ? _value.schoolEvents
          : schoolEvents // ignore: cast_nullable_to_non_nullable
              as List<EventCall>?,
      schoolNews: freezed == schoolNews
          ? _value.schoolNews
          : schoolNews // ignore: cast_nullable_to_non_nullable
              as List<SchoolNews>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolImplCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$SchoolImplCopyWith(
          _$SchoolImpl value, $Res Function(_$SchoolImpl) then) =
      __$$SchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? website,
      String? phoneNumber,
      List<Annoucement>? schoolAnnoucements,
      List<Campus>? campuses,
      List<EventCall>? schoolEvents,
      List<SchoolNews>? schoolNews});
}

/// @nodoc
class __$$SchoolImplCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$SchoolImpl>
    implements _$$SchoolImplCopyWith<$Res> {
  __$$SchoolImplCopyWithImpl(
      _$SchoolImpl _value, $Res Function(_$SchoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? phoneNumber = freezed,
    Object? schoolAnnoucements = freezed,
    Object? campuses = freezed,
    Object? schoolEvents = freezed,
    Object? schoolNews = freezed,
  }) {
    return _then(_$SchoolImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolAnnoucements: freezed == schoolAnnoucements
          ? _value._schoolAnnoucements
          : schoolAnnoucements // ignore: cast_nullable_to_non_nullable
              as List<Annoucement>?,
      campuses: freezed == campuses
          ? _value._campuses
          : campuses // ignore: cast_nullable_to_non_nullable
              as List<Campus>?,
      schoolEvents: freezed == schoolEvents
          ? _value._schoolEvents
          : schoolEvents // ignore: cast_nullable_to_non_nullable
              as List<EventCall>?,
      schoolNews: freezed == schoolNews
          ? _value._schoolNews
          : schoolNews // ignore: cast_nullable_to_non_nullable
              as List<SchoolNews>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolImpl implements _School {
  const _$SchoolImpl(
      {this.id,
      this.name,
      this.email,
      this.website,
      this.phoneNumber,
      final List<Annoucement>? schoolAnnoucements,
      final List<Campus>? campuses,
      final List<EventCall>? schoolEvents,
      final List<SchoolNews>? schoolNews})
      : _schoolAnnoucements = schoolAnnoucements,
        _campuses = campuses,
        _schoolEvents = schoolEvents,
        _schoolNews = schoolNews;

  factory _$SchoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? phoneNumber;
  final List<Annoucement>? _schoolAnnoucements;
  @override
  List<Annoucement>? get schoolAnnoucements {
    final value = _schoolAnnoucements;
    if (value == null) return null;
    if (_schoolAnnoucements is EqualUnmodifiableListView)
      return _schoolAnnoucements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Campus>? _campuses;
  @override
  List<Campus>? get campuses {
    final value = _campuses;
    if (value == null) return null;
    if (_campuses is EqualUnmodifiableListView) return _campuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EventCall>? _schoolEvents;
  @override
  List<EventCall>? get schoolEvents {
    final value = _schoolEvents;
    if (value == null) return null;
    if (_schoolEvents is EqualUnmodifiableListView) return _schoolEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SchoolNews>? _schoolNews;
  @override
  List<SchoolNews>? get schoolNews {
    final value = _schoolNews;
    if (value == null) return null;
    if (_schoolNews is EqualUnmodifiableListView) return _schoolNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'School(id: $id, name: $name, email: $email, website: $website, phoneNumber: $phoneNumber, schoolAnnoucements: $schoolAnnoucements, campuses: $campuses, schoolEvents: $schoolEvents, schoolNews: $schoolNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._schoolAnnoucements, _schoolAnnoucements) &&
            const DeepCollectionEquality().equals(other._campuses, _campuses) &&
            const DeepCollectionEquality()
                .equals(other._schoolEvents, _schoolEvents) &&
            const DeepCollectionEquality()
                .equals(other._schoolNews, _schoolNews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      website,
      phoneNumber,
      const DeepCollectionEquality().hash(_schoolAnnoucements),
      const DeepCollectionEquality().hash(_campuses),
      const DeepCollectionEquality().hash(_schoolEvents),
      const DeepCollectionEquality().hash(_schoolNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      __$$SchoolImplCopyWithImpl<_$SchoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolImplToJson(
      this,
    );
  }
}

abstract class _School implements School {
  const factory _School(
      {final int? id,
      final String? name,
      final String? email,
      final String? website,
      final String? phoneNumber,
      final List<Annoucement>? schoolAnnoucements,
      final List<Campus>? campuses,
      final List<EventCall>? schoolEvents,
      final List<SchoolNews>? schoolNews}) = _$SchoolImpl;

  factory _School.fromJson(Map<String, dynamic> json) = _$SchoolImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get website;
  @override
  String? get phoneNumber;
  @override
  List<Annoucement>? get schoolAnnoucements;
  @override
  List<Campus>? get campuses;
  @override
  List<EventCall>? get schoolEvents;
  @override
  List<SchoolNews>? get schoolNews;
  @override
  @JsonKey(ignore: true)
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
