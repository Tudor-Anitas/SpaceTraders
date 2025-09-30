// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refining_goods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefiningGoods _$RefiningGoodsFromJson(Map<String, dynamic> json) {
  return _RefiningGoods.fromJson(json);
}

/// @nodoc
mixin _$RefiningGoods {
  String get tradeSymbol => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;

  /// Serializes this RefiningGoods to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefiningGoods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefiningGoodsCopyWith<RefiningGoods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefiningGoodsCopyWith<$Res> {
  factory $RefiningGoodsCopyWith(
          RefiningGoods value, $Res Function(RefiningGoods) then) =
      _$RefiningGoodsCopyWithImpl<$Res, RefiningGoods>;
  @useResult
  $Res call({String tradeSymbol, int units});
}

/// @nodoc
class _$RefiningGoodsCopyWithImpl<$Res, $Val extends RefiningGoods>
    implements $RefiningGoodsCopyWith<$Res> {
  _$RefiningGoodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefiningGoods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeSymbol = null,
    Object? units = null,
  }) {
    return _then(_value.copyWith(
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefiningGoodsImplCopyWith<$Res>
    implements $RefiningGoodsCopyWith<$Res> {
  factory _$$RefiningGoodsImplCopyWith(
          _$RefiningGoodsImpl value, $Res Function(_$RefiningGoodsImpl) then) =
      __$$RefiningGoodsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tradeSymbol, int units});
}

/// @nodoc
class __$$RefiningGoodsImplCopyWithImpl<$Res>
    extends _$RefiningGoodsCopyWithImpl<$Res, _$RefiningGoodsImpl>
    implements _$$RefiningGoodsImplCopyWith<$Res> {
  __$$RefiningGoodsImplCopyWithImpl(
      _$RefiningGoodsImpl _value, $Res Function(_$RefiningGoodsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefiningGoods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeSymbol = null,
    Object? units = null,
  }) {
    return _then(_$RefiningGoodsImpl(
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefiningGoodsImpl implements _RefiningGoods {
  const _$RefiningGoodsImpl({this.tradeSymbol = '', this.units = 0});

  factory _$RefiningGoodsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefiningGoodsImplFromJson(json);

  @override
  @JsonKey()
  final String tradeSymbol;
  @override
  @JsonKey()
  final int units;

  @override
  String toString() {
    return 'RefiningGoods(tradeSymbol: $tradeSymbol, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefiningGoodsImpl &&
            (identical(other.tradeSymbol, tradeSymbol) ||
                other.tradeSymbol == tradeSymbol) &&
            (identical(other.units, units) || other.units == units));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tradeSymbol, units);

  /// Create a copy of RefiningGoods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefiningGoodsImplCopyWith<_$RefiningGoodsImpl> get copyWith =>
      __$$RefiningGoodsImplCopyWithImpl<_$RefiningGoodsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefiningGoodsImplToJson(
      this,
    );
  }
}

abstract class _RefiningGoods implements RefiningGoods {
  const factory _RefiningGoods({final String tradeSymbol, final int units}) =
      _$RefiningGoodsImpl;

  factory _RefiningGoods.fromJson(Map<String, dynamic> json) =
      _$RefiningGoodsImpl.fromJson;

  @override
  String get tradeSymbol;
  @override
  int get units;

  /// Create a copy of RefiningGoods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefiningGoodsImplCopyWith<_$RefiningGoodsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
