// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_deliver_good.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractDeliverGood _$ContractDeliverGoodFromJson(Map<String, dynamic> json) {
  return _ContractDeliverGood.fromJson(json);
}

/// @nodoc
mixin _$ContractDeliverGood {
  String get tradeSymbol => throw _privateConstructorUsedError;
  String get destinationSymbol => throw _privateConstructorUsedError;
  int get unitsRequired => throw _privateConstructorUsedError;
  int get unitsFulfilled => throw _privateConstructorUsedError;

  /// Serializes this ContractDeliverGood to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractDeliverGood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractDeliverGoodCopyWith<ContractDeliverGood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractDeliverGoodCopyWith<$Res> {
  factory $ContractDeliverGoodCopyWith(
          ContractDeliverGood value, $Res Function(ContractDeliverGood) then) =
      _$ContractDeliverGoodCopyWithImpl<$Res, ContractDeliverGood>;
  @useResult
  $Res call(
      {String tradeSymbol,
      String destinationSymbol,
      int unitsRequired,
      int unitsFulfilled});
}

/// @nodoc
class _$ContractDeliverGoodCopyWithImpl<$Res, $Val extends ContractDeliverGood>
    implements $ContractDeliverGoodCopyWith<$Res> {
  _$ContractDeliverGoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractDeliverGood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeSymbol = null,
    Object? destinationSymbol = null,
    Object? unitsRequired = null,
    Object? unitsFulfilled = null,
  }) {
    return _then(_value.copyWith(
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      destinationSymbol: null == destinationSymbol
          ? _value.destinationSymbol
          : destinationSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      unitsRequired: null == unitsRequired
          ? _value.unitsRequired
          : unitsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      unitsFulfilled: null == unitsFulfilled
          ? _value.unitsFulfilled
          : unitsFulfilled // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractDeliverGoodImplCopyWith<$Res>
    implements $ContractDeliverGoodCopyWith<$Res> {
  factory _$$ContractDeliverGoodImplCopyWith(_$ContractDeliverGoodImpl value,
          $Res Function(_$ContractDeliverGoodImpl) then) =
      __$$ContractDeliverGoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tradeSymbol,
      String destinationSymbol,
      int unitsRequired,
      int unitsFulfilled});
}

/// @nodoc
class __$$ContractDeliverGoodImplCopyWithImpl<$Res>
    extends _$ContractDeliverGoodCopyWithImpl<$Res, _$ContractDeliverGoodImpl>
    implements _$$ContractDeliverGoodImplCopyWith<$Res> {
  __$$ContractDeliverGoodImplCopyWithImpl(_$ContractDeliverGoodImpl _value,
      $Res Function(_$ContractDeliverGoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractDeliverGood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeSymbol = null,
    Object? destinationSymbol = null,
    Object? unitsRequired = null,
    Object? unitsFulfilled = null,
  }) {
    return _then(_$ContractDeliverGoodImpl(
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      destinationSymbol: null == destinationSymbol
          ? _value.destinationSymbol
          : destinationSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      unitsRequired: null == unitsRequired
          ? _value.unitsRequired
          : unitsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      unitsFulfilled: null == unitsFulfilled
          ? _value.unitsFulfilled
          : unitsFulfilled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractDeliverGoodImpl implements _ContractDeliverGood {
  const _$ContractDeliverGoodImpl(
      {this.tradeSymbol = '',
      this.destinationSymbol = '',
      this.unitsRequired = 0,
      this.unitsFulfilled = 0});

  factory _$ContractDeliverGoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractDeliverGoodImplFromJson(json);

  @override
  @JsonKey()
  final String tradeSymbol;
  @override
  @JsonKey()
  final String destinationSymbol;
  @override
  @JsonKey()
  final int unitsRequired;
  @override
  @JsonKey()
  final int unitsFulfilled;

  @override
  String toString() {
    return 'ContractDeliverGood(tradeSymbol: $tradeSymbol, destinationSymbol: $destinationSymbol, unitsRequired: $unitsRequired, unitsFulfilled: $unitsFulfilled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractDeliverGoodImpl &&
            (identical(other.tradeSymbol, tradeSymbol) ||
                other.tradeSymbol == tradeSymbol) &&
            (identical(other.destinationSymbol, destinationSymbol) ||
                other.destinationSymbol == destinationSymbol) &&
            (identical(other.unitsRequired, unitsRequired) ||
                other.unitsRequired == unitsRequired) &&
            (identical(other.unitsFulfilled, unitsFulfilled) ||
                other.unitsFulfilled == unitsFulfilled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tradeSymbol, destinationSymbol,
      unitsRequired, unitsFulfilled);

  /// Create a copy of ContractDeliverGood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractDeliverGoodImplCopyWith<_$ContractDeliverGoodImpl> get copyWith =>
      __$$ContractDeliverGoodImplCopyWithImpl<_$ContractDeliverGoodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractDeliverGoodImplToJson(
      this,
    );
  }
}

abstract class _ContractDeliverGood implements ContractDeliverGood {
  const factory _ContractDeliverGood(
      {final String tradeSymbol,
      final String destinationSymbol,
      final int unitsRequired,
      final int unitsFulfilled}) = _$ContractDeliverGoodImpl;

  factory _ContractDeliverGood.fromJson(Map<String, dynamic> json) =
      _$ContractDeliverGoodImpl.fromJson;

  @override
  String get tradeSymbol;
  @override
  String get destinationSymbol;
  @override
  int get unitsRequired;
  @override
  int get unitsFulfilled;

  /// Create a copy of ContractDeliverGood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractDeliverGoodImplCopyWith<_$ContractDeliverGoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
