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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SchoolCall _$SchoolCallFromJson(Map<String, dynamic> json) {
  return _SchoolCall.fromJson(json);
}

/// @nodoc
mixin _$SchoolCall {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get website => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(5)
  List<AnnoucementCall>? get schoolAnnoucements =>
      throw _privateConstructorUsedError;
  @HiveField(6)
  List<CampusCall>? get campuses => throw _privateConstructorUsedError;
  @HiveField(7)
  List<EventCall>? get schoolEvents => throw _privateConstructorUsedError;
  @HiveField(8)
  List<NewsCall>? get schoolNews => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get timestamp => throw _privateConstructorUsedError;
  @HiveField(10)
  bool? get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this SchoolCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchoolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolCallCopyWith<SchoolCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCallCopyWith<$Res> {
  factory $SchoolCallCopyWith(
    SchoolCall value,
    $Res Function(SchoolCall) then,
  ) = _$SchoolCallCopyWithImpl<$Res, SchoolCall>;
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? website,
    @HiveField(4) String? phoneNumber,
    @HiveField(5) List<AnnoucementCall>? schoolAnnoucements,
    @HiveField(6) List<CampusCall>? campuses,
    @HiveField(7) List<EventCall>? schoolEvents,
    @HiveField(8) List<NewsCall>? schoolNews,
    @HiveField(9) int? timestamp,
    @HiveField(10) bool? isDeleted,
  });
}

/// @nodoc
class _$SchoolCallCopyWithImpl<$Res, $Val extends SchoolCall>
    implements $SchoolCallCopyWith<$Res> {
  _$SchoolCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolCall
  /// with the given fields replaced by the non-null parameter values.
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
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            website:
                freezed == website
                    ? _value.website
                    : website // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            schoolAnnoucements:
                freezed == schoolAnnoucements
                    ? _value.schoolAnnoucements
                    : schoolAnnoucements // ignore: cast_nullable_to_non_nullable
                        as List<AnnoucementCall>?,
            campuses:
                freezed == campuses
                    ? _value.campuses
                    : campuses // ignore: cast_nullable_to_non_nullable
                        as List<CampusCall>?,
            schoolEvents:
                freezed == schoolEvents
                    ? _value.schoolEvents
                    : schoolEvents // ignore: cast_nullable_to_non_nullable
                        as List<EventCall>?,
            schoolNews:
                freezed == schoolNews
                    ? _value.schoolNews
                    : schoolNews // ignore: cast_nullable_to_non_nullable
                        as List<NewsCall>?,
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
abstract class _$$SchoolCallImplCopyWith<$Res>
    implements $SchoolCallCopyWith<$Res> {
  factory _$$SchoolCallImplCopyWith(
    _$SchoolCallImpl value,
    $Res Function(_$SchoolCallImpl) then,
  ) = __$$SchoolCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? website,
    @HiveField(4) String? phoneNumber,
    @HiveField(5) List<AnnoucementCall>? schoolAnnoucements,
    @HiveField(6) List<CampusCall>? campuses,
    @HiveField(7) List<EventCall>? schoolEvents,
    @HiveField(8) List<NewsCall>? schoolNews,
    @HiveField(9) int? timestamp,
    @HiveField(10) bool? isDeleted,
  });
}

/// @nodoc
class __$$SchoolCallImplCopyWithImpl<$Res>
    extends _$SchoolCallCopyWithImpl<$Res, _$SchoolCallImpl>
    implements _$$SchoolCallImplCopyWith<$Res> {
  __$$SchoolCallImplCopyWithImpl(
    _$SchoolCallImpl _value,
    $Res Function(_$SchoolCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchoolCall
  /// with the given fields replaced by the non-null parameter values.
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
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _$SchoolCallImpl(
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
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        website:
            freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        schoolAnnoucements:
            freezed == schoolAnnoucements
                ? _value._schoolAnnoucements
                : schoolAnnoucements // ignore: cast_nullable_to_non_nullable
                    as List<AnnoucementCall>?,
        campuses:
            freezed == campuses
                ? _value._campuses
                : campuses // ignore: cast_nullable_to_non_nullable
                    as List<CampusCall>?,
        schoolEvents:
            freezed == schoolEvents
                ? _value._schoolEvents
                : schoolEvents // ignore: cast_nullable_to_non_nullable
                    as List<EventCall>?,
        schoolNews:
            freezed == schoolNews
                ? _value._schoolNews
                : schoolNews // ignore: cast_nullable_to_non_nullable
                    as List<NewsCall>?,
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
class _$SchoolCallImpl extends _SchoolCall {
  _$SchoolCallImpl({
    @HiveField(0) this.id,
    @HiveField(1) this.name,
    @HiveField(2) this.email,
    @HiveField(3) this.website,
    @HiveField(4) this.phoneNumber,
    @HiveField(5) final List<AnnoucementCall>? schoolAnnoucements,
    @HiveField(6) final List<CampusCall>? campuses,
    @HiveField(7) final List<EventCall>? schoolEvents,
    @HiveField(8) final List<NewsCall>? schoolNews,
    @HiveField(9) this.timestamp,
    @HiveField(10) this.isDeleted,
  }) : _schoolAnnoucements = schoolAnnoucements,
       _campuses = campuses,
       _schoolEvents = schoolEvents,
       _schoolNews = schoolNews,
       super._();

  factory _$SchoolCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolCallImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? email;
  @override
  @HiveField(3)
  final String? website;
  @override
  @HiveField(4)
  final String? phoneNumber;
  final List<AnnoucementCall>? _schoolAnnoucements;
  @override
  @HiveField(5)
  List<AnnoucementCall>? get schoolAnnoucements {
    final value = _schoolAnnoucements;
    if (value == null) return null;
    if (_schoolAnnoucements is EqualUnmodifiableListView)
      return _schoolAnnoucements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CampusCall>? _campuses;
  @override
  @HiveField(6)
  List<CampusCall>? get campuses {
    final value = _campuses;
    if (value == null) return null;
    if (_campuses is EqualUnmodifiableListView) return _campuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EventCall>? _schoolEvents;
  @override
  @HiveField(7)
  List<EventCall>? get schoolEvents {
    final value = _schoolEvents;
    if (value == null) return null;
    if (_schoolEvents is EqualUnmodifiableListView) return _schoolEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NewsCall>? _schoolNews;
  @override
  @HiveField(8)
  List<NewsCall>? get schoolNews {
    final value = _schoolNews;
    if (value == null) return null;
    if (_schoolNews is EqualUnmodifiableListView) return _schoolNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(9)
  final int? timestamp;
  @override
  @HiveField(10)
  final bool? isDeleted;

  @override
  String toString() {
    return 'SchoolCall(id: $id, name: $name, email: $email, website: $website, phoneNumber: $phoneNumber, schoolAnnoucements: $schoolAnnoucements, campuses: $campuses, schoolEvents: $schoolEvents, schoolNews: $schoolNews, timestamp: $timestamp, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(
              other._schoolAnnoucements,
              _schoolAnnoucements,
            ) &&
            const DeepCollectionEquality().equals(other._campuses, _campuses) &&
            const DeepCollectionEquality().equals(
              other._schoolEvents,
              _schoolEvents,
            ) &&
            const DeepCollectionEquality().equals(
              other._schoolNews,
              _schoolNews,
            ) &&
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
    email,
    website,
    phoneNumber,
    const DeepCollectionEquality().hash(_schoolAnnoucements),
    const DeepCollectionEquality().hash(_campuses),
    const DeepCollectionEquality().hash(_schoolEvents),
    const DeepCollectionEquality().hash(_schoolNews),
    timestamp,
    isDeleted,
  );

  /// Create a copy of SchoolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolCallImplCopyWith<_$SchoolCallImpl> get copyWith =>
      __$$SchoolCallImplCopyWithImpl<_$SchoolCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolCallImplToJson(this);
  }
}

abstract class _SchoolCall extends SchoolCall {
  factory _SchoolCall({
    @HiveField(0) final int? id,
    @HiveField(1) final String? name,
    @HiveField(2) final String? email,
    @HiveField(3) final String? website,
    @HiveField(4) final String? phoneNumber,
    @HiveField(5) final List<AnnoucementCall>? schoolAnnoucements,
    @HiveField(6) final List<CampusCall>? campuses,
    @HiveField(7) final List<EventCall>? schoolEvents,
    @HiveField(8) final List<NewsCall>? schoolNews,
    @HiveField(9) final int? timestamp,
    @HiveField(10) final bool? isDeleted,
  }) = _$SchoolCallImpl;
  _SchoolCall._() : super._();

  factory _SchoolCall.fromJson(Map<String, dynamic> json) =
      _$SchoolCallImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  String? get website;
  @override
  @HiveField(4)
  String? get phoneNumber;
  @override
  @HiveField(5)
  List<AnnoucementCall>? get schoolAnnoucements;
  @override
  @HiveField(6)
  List<CampusCall>? get campuses;
  @override
  @HiveField(7)
  List<EventCall>? get schoolEvents;
  @override
  @HiveField(8)
  List<NewsCall>? get schoolNews;
  @override
  @HiveField(9)
  int? get timestamp;
  @override
  @HiveField(10)
  bool? get isDeleted;

  /// Create a copy of SchoolCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolCallImplCopyWith<_$SchoolCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
