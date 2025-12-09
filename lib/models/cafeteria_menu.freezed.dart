// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cafeteria_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CafeteriaMenu _$CafeteriaMenuFromJson(Map<String, dynamic> json) {
  return _CafeteriaMenu.fromJson(json);
}

/// @nodoc
mixin _$CafeteriaMenu {
  List<CafeteriaItem> get menuItems => throw _privateConstructorUsedError;

  /// Serializes this CafeteriaMenu to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CafeteriaMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CafeteriaMenuCopyWith<CafeteriaMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeteriaMenuCopyWith<$Res> {
  factory $CafeteriaMenuCopyWith(
    CafeteriaMenu value,
    $Res Function(CafeteriaMenu) then,
  ) = _$CafeteriaMenuCopyWithImpl<$Res, CafeteriaMenu>;
  @useResult
  $Res call({List<CafeteriaItem> menuItems});
}

/// @nodoc
class _$CafeteriaMenuCopyWithImpl<$Res, $Val extends CafeteriaMenu>
    implements $CafeteriaMenuCopyWith<$Res> {
  _$CafeteriaMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CafeteriaMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? menuItems = null}) {
    return _then(
      _value.copyWith(
            menuItems:
                null == menuItems
                    ? _value.menuItems
                    : menuItems // ignore: cast_nullable_to_non_nullable
                        as List<CafeteriaItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CafeteriaMenuImplCopyWith<$Res>
    implements $CafeteriaMenuCopyWith<$Res> {
  factory _$$CafeteriaMenuImplCopyWith(
    _$CafeteriaMenuImpl value,
    $Res Function(_$CafeteriaMenuImpl) then,
  ) = __$$CafeteriaMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CafeteriaItem> menuItems});
}

/// @nodoc
class __$$CafeteriaMenuImplCopyWithImpl<$Res>
    extends _$CafeteriaMenuCopyWithImpl<$Res, _$CafeteriaMenuImpl>
    implements _$$CafeteriaMenuImplCopyWith<$Res> {
  __$$CafeteriaMenuImplCopyWithImpl(
    _$CafeteriaMenuImpl _value,
    $Res Function(_$CafeteriaMenuImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CafeteriaMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? menuItems = null}) {
    return _then(
      _$CafeteriaMenuImpl(
        menuItems:
            null == menuItems
                ? _value._menuItems
                : menuItems // ignore: cast_nullable_to_non_nullable
                    as List<CafeteriaItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CafeteriaMenuImpl implements _CafeteriaMenu {
  const _$CafeteriaMenuImpl({final List<CafeteriaItem> menuItems = const []})
    : _menuItems = menuItems;

  factory _$CafeteriaMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$CafeteriaMenuImplFromJson(json);

  final List<CafeteriaItem> _menuItems;
  @override
  @JsonKey()
  List<CafeteriaItem> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  String toString() {
    return 'CafeteriaMenu(menuItems: $menuItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CafeteriaMenuImpl &&
            const DeepCollectionEquality().equals(
              other._menuItems,
              _menuItems,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menuItems));

  /// Create a copy of CafeteriaMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CafeteriaMenuImplCopyWith<_$CafeteriaMenuImpl> get copyWith =>
      __$$CafeteriaMenuImplCopyWithImpl<_$CafeteriaMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CafeteriaMenuImplToJson(this);
  }
}

abstract class _CafeteriaMenu implements CafeteriaMenu {
  const factory _CafeteriaMenu({final List<CafeteriaItem> menuItems}) =
      _$CafeteriaMenuImpl;

  factory _CafeteriaMenu.fromJson(Map<String, dynamic> json) =
      _$CafeteriaMenuImpl.fromJson;

  @override
  List<CafeteriaItem> get menuItems;

  /// Create a copy of CafeteriaMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CafeteriaMenuImplCopyWith<_$CafeteriaMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
