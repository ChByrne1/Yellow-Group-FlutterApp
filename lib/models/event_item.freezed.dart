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

EventCall _$EventCallFromJson(Map<String, dynamic> json) {
  return _EventCall.fromJson(json);
}

/// @nodoc
mixin _$EventCall {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  int? get campusId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCallCopyWith<EventCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCallCopyWith<$Res> {
  factory $EventCallCopyWith(EventCall value, $Res Function(EventCall) then) =
      _$EventCallCopyWithImpl<$Res, EventCall>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      DateTime? start,
      DateTime? end,
      int? campusId,
      String? location,
      int? timestamp});
}

/// @nodoc
class _$EventCallCopyWithImpl<$Res, $Val extends EventCall>
    implements $EventCallCopyWith<$Res> {
  _$EventCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCallImplCopyWith<$Res>
    implements $EventCallCopyWith<$Res> {
  factory _$$EventCallImplCopyWith(
          _$EventCallImpl value, $Res Function(_$EventCallImpl) then) =
      __$$EventCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      DateTime? start,
      DateTime? end,
      int? campusId,
      String? location,
      int? timestamp});
}

/// @nodoc
class __$$EventCallImplCopyWithImpl<$Res>
    extends _$EventCallCopyWithImpl<$Res, _$EventCallImpl>
    implements _$$EventCallImplCopyWith<$Res> {
  __$$EventCallImplCopyWithImpl(
      _$EventCallImpl _value, $Res Function(_$EventCallImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$EventCallImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventCallImpl implements _EventCall {
  const _$EventCallImpl(
      {this.id,
      this.title,
      this.description,
      this.start,
      this.end,
      this.campusId,
      this.location,
      this.timestamp});

  factory _$EventCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventCallImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final int? campusId;
  @override
  final String? location;
  @override
  final int? timestamp;

  @override
  String toString() {
    return 'EventCall(id: $id, title: $title, description: $description, start: $start, end: $end, campusId: $campusId, location: $location, timestamp: $timestamp)';
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
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, start,
      end, campusId, location, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCallImplCopyWith<_$EventCallImpl> get copyWith =>
      __$$EventCallImplCopyWithImpl<_$EventCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventCallImplToJson(
      this,
    );
  }
}

abstract class _EventCall implements EventCall {
  const factory _EventCall(
      {final int? id,
      final String? title,
      final String? description,
      final DateTime? start,
      final DateTime? end,
      final int? campusId,
      final String? location,
      final int? timestamp}) = _$EventCallImpl;

  factory _EventCall.fromJson(Map<String, dynamic> json) =
      _$EventCallImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  int? get campusId;
  @override
  String? get location;
  @override
  int? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$EventCallImplCopyWith<_$EventCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventEdit _$EventEditFromJson(Map<String, dynamic> json) {
  return _EventEdit.fromJson(json);
}

/// @nodoc
mixin _$EventEdit {
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Start')
  DateTime? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'End')
  DateTime? get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'CampusId')
  int? get campusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: "Timestamp")
  int? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventEditCopyWith<EventEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEditCopyWith<$Res> {
  factory $EventEditCopyWith(EventEdit value, $Res Function(EventEdit) then) =
      _$EventEditCopyWithImpl<$Res, EventEdit>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'Start') DateTime? start,
      @JsonKey(name: 'End') DateTime? end,
      @JsonKey(name: 'CampusId') int? campusId,
      @JsonKey(name: 'Location') String location,
      @JsonKey(name: "Timestamp") int? timestamp});
}

/// @nodoc
class _$EventEditCopyWithImpl<$Res, $Val extends EventEdit>
    implements $EventEditCopyWith<$Res> {
  _$EventEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? campusId = freezed,
    Object? location = null,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventEditImplCopyWith<$Res>
    implements $EventEditCopyWith<$Res> {
  factory _$$EventEditImplCopyWith(
          _$EventEditImpl value, $Res Function(_$EventEditImpl) then) =
      __$$EventEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'Start') DateTime? start,
      @JsonKey(name: 'End') DateTime? end,
      @JsonKey(name: 'CampusId') int? campusId,
      @JsonKey(name: 'Location') String location,
      @JsonKey(name: "Timestamp") int? timestamp});
}

/// @nodoc
class __$$EventEditImplCopyWithImpl<$Res>
    extends _$EventEditCopyWithImpl<$Res, _$EventEditImpl>
    implements _$$EventEditImplCopyWith<$Res> {
  __$$EventEditImplCopyWithImpl(
      _$EventEditImpl _value, $Res Function(_$EventEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? campusId = freezed,
    Object? location = null,
    Object? timestamp = freezed,
  }) {
    return _then(_$EventEditImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventEditImpl implements _EventEdit {
  const _$EventEditImpl(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Description') required this.description,
      @JsonKey(name: 'Start') this.start,
      @JsonKey(name: 'End') this.end,
      @JsonKey(name: 'CampusId') this.campusId,
      @JsonKey(name: 'Location') this.location = "NoWhere",
      @JsonKey(name: "Timestamp") this.timestamp});

  factory _$EventEditImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventEditImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int? id;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Description')
  final String description;
  @override
  @JsonKey(name: 'Start')
  final DateTime? start;
  @override
  @JsonKey(name: 'End')
  final DateTime? end;
  @override
  @JsonKey(name: 'CampusId')
  final int? campusId;
  @override
  @JsonKey(name: 'Location')
  final String location;
  @override
  @JsonKey(name: "Timestamp")
  final int? timestamp;

  @override
  String toString() {
    return 'EventEdit(id: $id, title: $title, description: $description, start: $start, end: $end, campusId: $campusId, location: $location, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventEditImpl &&
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
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, start,
      end, campusId, location, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEditImplCopyWith<_$EventEditImpl> get copyWith =>
      __$$EventEditImplCopyWithImpl<_$EventEditImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventEditImplToJson(
      this,
    );
  }
}

abstract class _EventEdit implements EventEdit {
  const factory _EventEdit(
      {@JsonKey(name: 'Id') final int? id,
      @JsonKey(name: 'Title') required final String title,
      @JsonKey(name: 'Description') required final String description,
      @JsonKey(name: 'Start') final DateTime? start,
      @JsonKey(name: 'End') final DateTime? end,
      @JsonKey(name: 'CampusId') final int? campusId,
      @JsonKey(name: 'Location') final String location,
      @JsonKey(name: "Timestamp") final int? timestamp}) = _$EventEditImpl;

  factory _EventEdit.fromJson(Map<String, dynamic> json) =
      _$EventEditImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Description')
  String get description;
  @override
  @JsonKey(name: 'Start')
  DateTime? get start;
  @override
  @JsonKey(name: 'End')
  DateTime? get end;
  @override
  @JsonKey(name: 'CampusId')
  int? get campusId;
  @override
  @JsonKey(name: 'Location')
  String get location;
  @override
  @JsonKey(name: "Timestamp")
  int? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$EventEditImplCopyWith<_$EventEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventNew _$EventNewFromJson(Map<String, dynamic> json) {
  return _EventNew.fromJson(json);
}

/// @nodoc
mixin _$EventNew {
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Start')
  DateTime? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'End')
  DateTime? get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'CampusId')
  int? get campusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Location')
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventNewCopyWith<EventNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventNewCopyWith<$Res> {
  factory $EventNewCopyWith(EventNew value, $Res Function(EventNew) then) =
      _$EventNewCopyWithImpl<$Res, EventNew>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'Start') DateTime? start,
      @JsonKey(name: 'End') DateTime? end,
      @JsonKey(name: 'CampusId') int? campusId,
      @JsonKey(name: 'Location') String location});
}

/// @nodoc
class _$EventNewCopyWithImpl<$Res, $Val extends EventNew>
    implements $EventNewCopyWith<$Res> {
  _$EventNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? campusId = freezed,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventNewImplCopyWith<$Res>
    implements $EventNewCopyWith<$Res> {
  factory _$$EventNewImplCopyWith(
          _$EventNewImpl value, $Res Function(_$EventNewImpl) then) =
      __$$EventNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'Start') DateTime? start,
      @JsonKey(name: 'End') DateTime? end,
      @JsonKey(name: 'CampusId') int? campusId,
      @JsonKey(name: 'Location') String location});
}

/// @nodoc
class __$$EventNewImplCopyWithImpl<$Res>
    extends _$EventNewCopyWithImpl<$Res, _$EventNewImpl>
    implements _$$EventNewImplCopyWith<$Res> {
  __$$EventNewImplCopyWithImpl(
      _$EventNewImpl _value, $Res Function(_$EventNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? campusId = freezed,
    Object? location = null,
  }) {
    return _then(_$EventNewImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventNewImpl implements _EventNew {
  const _$EventNewImpl(
      {@JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Description') required this.description,
      @JsonKey(name: 'Start') this.start,
      @JsonKey(name: 'End') this.end,
      @JsonKey(name: 'CampusId') this.campusId,
      @JsonKey(name: 'Location') this.location = "NoWhere"});

  factory _$EventNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventNewImplFromJson(json);

  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Description')
  final String description;
  @override
  @JsonKey(name: 'Start')
  final DateTime? start;
  @override
  @JsonKey(name: 'End')
  final DateTime? end;
  @override
  @JsonKey(name: 'CampusId')
  final int? campusId;
  @override
  @JsonKey(name: 'Location')
  final String location;

  @override
  String toString() {
    return 'EventNew(title: $title, description: $description, start: $start, end: $end, campusId: $campusId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventNewImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.campusId, campusId) ||
                other.campusId == campusId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, start, end, campusId, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventNewImplCopyWith<_$EventNewImpl> get copyWith =>
      __$$EventNewImplCopyWithImpl<_$EventNewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventNewImplToJson(
      this,
    );
  }
}

abstract class _EventNew implements EventNew {
  const factory _EventNew(
      {@JsonKey(name: 'Title') required final String title,
      @JsonKey(name: 'Description') required final String description,
      @JsonKey(name: 'Start') final DateTime? start,
      @JsonKey(name: 'End') final DateTime? end,
      @JsonKey(name: 'CampusId') final int? campusId,
      @JsonKey(name: 'Location') final String location}) = _$EventNewImpl;

  factory _EventNew.fromJson(Map<String, dynamic> json) =
      _$EventNewImpl.fromJson;

  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Description')
  String get description;
  @override
  @JsonKey(name: 'Start')
  DateTime? get start;
  @override
  @JsonKey(name: 'End')
  DateTime? get end;
  @override
  @JsonKey(name: 'CampusId')
  int? get campusId;
  @override
  @JsonKey(name: 'Location')
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$EventNewImplCopyWith<_$EventNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
