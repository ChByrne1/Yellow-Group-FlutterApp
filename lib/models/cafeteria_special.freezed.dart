// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cafeteria_special.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CafeteriaSpecial _$CafeteriaSpecialFromJson(Map<String, dynamic> json) {
  return _CafeteriaSpecial.fromJson(json);
}

/// @nodoc
mixin _$CafeteriaSpecial {
  DayOfWeek get dayOfTheWeek => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafeteriaSpecialCopyWith<CafeteriaSpecial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeteriaSpecialCopyWith<$Res> {
  factory $CafeteriaSpecialCopyWith(
          CafeteriaSpecial value, $Res Function(CafeteriaSpecial) then) =
      _$CafeteriaSpecialCopyWithImpl<$Res, CafeteriaSpecial>;
  @useResult
  $Res call({DayOfWeek dayOfTheWeek, String imagePath});
}

/// @nodoc
class _$CafeteriaSpecialCopyWithImpl<$Res, $Val extends CafeteriaSpecial>
    implements $CafeteriaSpecialCopyWith<$Res> {
  _$CafeteriaSpecialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfTheWeek = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      dayOfTheWeek: null == dayOfTheWeek
          ? _value.dayOfTheWeek
          : dayOfTheWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CafeteriaSpecialImplCopyWith<$Res>
    implements $CafeteriaSpecialCopyWith<$Res> {
  factory _$$CafeteriaSpecialImplCopyWith(_$CafeteriaSpecialImpl value,
          $Res Function(_$CafeteriaSpecialImpl) then) =
      __$$CafeteriaSpecialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DayOfWeek dayOfTheWeek, String imagePath});
}

/// @nodoc
class __$$CafeteriaSpecialImplCopyWithImpl<$Res>
    extends _$CafeteriaSpecialCopyWithImpl<$Res, _$CafeteriaSpecialImpl>
    implements _$$CafeteriaSpecialImplCopyWith<$Res> {
  __$$CafeteriaSpecialImplCopyWithImpl(_$CafeteriaSpecialImpl _value,
      $Res Function(_$CafeteriaSpecialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfTheWeek = null,
    Object? imagePath = null,
  }) {
    return _then(_$CafeteriaSpecialImpl(
      dayOfTheWeek: null == dayOfTheWeek
          ? _value.dayOfTheWeek
          : dayOfTheWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CafeteriaSpecialImpl implements _CafeteriaSpecial {
  const _$CafeteriaSpecialImpl(
      {required this.dayOfTheWeek, required this.imagePath});

  factory _$CafeteriaSpecialImpl.fromJson(Map<String, dynamic> json) =>
      _$$CafeteriaSpecialImplFromJson(json);

  @override
  final DayOfWeek dayOfTheWeek;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'CafeteriaSpecial(dayOfTheWeek: $dayOfTheWeek, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CafeteriaSpecialImpl &&
            (identical(other.dayOfTheWeek, dayOfTheWeek) ||
                other.dayOfTheWeek == dayOfTheWeek) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfTheWeek, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CafeteriaSpecialImplCopyWith<_$CafeteriaSpecialImpl> get copyWith =>
      __$$CafeteriaSpecialImplCopyWithImpl<_$CafeteriaSpecialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CafeteriaSpecialImplToJson(
      this,
    );
  }
}

abstract class _CafeteriaSpecial implements CafeteriaSpecial {
  const factory _CafeteriaSpecial(
      {required final DayOfWeek dayOfTheWeek,
      required final String imagePath}) = _$CafeteriaSpecialImpl;

  factory _CafeteriaSpecial.fromJson(Map<String, dynamic> json) =
      _$CafeteriaSpecialImpl.fromJson;

  @override
  DayOfWeek get dayOfTheWeek;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$CafeteriaSpecialImplCopyWith<_$CafeteriaSpecialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
