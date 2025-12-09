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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CafeteriaItem _$CafeteriaItemFromJson(Map<String, dynamic> json) {
  return _CafeteriaItem.fromJson(json);
}

/// @nodoc
mixin _$CafeteriaItem {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get category => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get iconName => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get timestamp => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this CafeteriaItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CafeteriaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CafeteriaItemCopyWith<CafeteriaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeteriaItemCopyWith<$Res> {
  factory $CafeteriaItemCopyWith(
    CafeteriaItem value,
    $Res Function(CafeteriaItem) then,
  ) = _$CafeteriaItemCopyWithImpl<$Res, CafeteriaItem>;
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) int? category,
    @HiveField(2) String? name,
    @HiveField(3) String? description,
    @HiveField(4) String? iconName,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  });
}

/// @nodoc
class _$CafeteriaItemCopyWithImpl<$Res, $Val extends CafeteriaItem>
    implements $CafeteriaItemCopyWith<$Res> {
  _$CafeteriaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CafeteriaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? iconName = freezed,
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
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as int?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            iconName:
                freezed == iconName
                    ? _value.iconName
                    : iconName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CafeteriaItemImplCopyWith<$Res>
    implements $CafeteriaItemCopyWith<$Res> {
  factory _$$CafeteriaItemImplCopyWith(
    _$CafeteriaItemImpl value,
    $Res Function(_$CafeteriaItemImpl) then,
  ) = __$$CafeteriaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int? id,
    @HiveField(1) int? category,
    @HiveField(2) String? name,
    @HiveField(3) String? description,
    @HiveField(4) String? iconName,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  });
}

/// @nodoc
class __$$CafeteriaItemImplCopyWithImpl<$Res>
    extends _$CafeteriaItemCopyWithImpl<$Res, _$CafeteriaItemImpl>
    implements _$$CafeteriaItemImplCopyWith<$Res> {
  __$$CafeteriaItemImplCopyWithImpl(
    _$CafeteriaItemImpl _value,
    $Res Function(_$CafeteriaItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CafeteriaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? iconName = freezed,
    Object? timestamp = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(
      _$CafeteriaItemImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        iconName:
            freezed == iconName
                ? _value.iconName
                : iconName // ignore: cast_nullable_to_non_nullable
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
class _$CafeteriaItemImpl extends _CafeteriaItem {
  _$CafeteriaItemImpl({
    @HiveField(0) this.id,
    @HiveField(1) this.category,
    @HiveField(2) this.name,
    @HiveField(3) this.description,
    @HiveField(4) this.iconName,
    @HiveField(5) this.timestamp,
    @HiveField(6) this.isDeleted,
  }) : super._();

  factory _$CafeteriaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CafeteriaItemImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final int? category;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? description;
  @override
  @HiveField(4)
  final String? iconName;
  @override
  @HiveField(5)
  final int? timestamp;
  @override
  @HiveField(6)
  final bool? isDeleted;

  @override
  String toString() {
    return 'CafeteriaItem(id: $id, category: $category, name: $name, description: $description, iconName: $iconName, timestamp: $timestamp, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CafeteriaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
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
    category,
    name,
    description,
    iconName,
    timestamp,
    isDeleted,
  );

  /// Create a copy of CafeteriaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CafeteriaItemImplCopyWith<_$CafeteriaItemImpl> get copyWith =>
      __$$CafeteriaItemImplCopyWithImpl<_$CafeteriaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CafeteriaItemImplToJson(this);
  }
}

abstract class _CafeteriaItem extends CafeteriaItem {
  factory _CafeteriaItem({
    @HiveField(0) final int? id,
    @HiveField(1) final int? category,
    @HiveField(2) final String? name,
    @HiveField(3) final String? description,
    @HiveField(4) final String? iconName,
    @HiveField(5) final int? timestamp,
    @HiveField(6) final bool? isDeleted,
  }) = _$CafeteriaItemImpl;
  _CafeteriaItem._() : super._();

  factory _CafeteriaItem.fromJson(Map<String, dynamic> json) =
      _$CafeteriaItemImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  int? get category;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get description;
  @override
  @HiveField(4)
  String? get iconName;
  @override
  @HiveField(5)
  int? get timestamp;
  @override
  @HiveField(6)
  bool? get isDeleted;

  /// Create a copy of CafeteriaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CafeteriaItemImplCopyWith<_$CafeteriaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
