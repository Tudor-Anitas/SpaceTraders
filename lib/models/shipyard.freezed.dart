// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipyard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Shipyard _$ShipyardFromJson(Map<String, dynamic> json) {
  return _Shipyard.fromJson(json);
}

/// @nodoc
mixin _$Shipyard {
  String get symbol => throw _privateConstructorUsedError;
  List<ShipyardShip> get ships => throw _privateConstructorUsedError;
  List<String> get shipTypes => throw _privateConstructorUsedError;
  Map<String, dynamic> get transactions => throw _privateConstructorUsedError;
  String? get factionSymbol => throw _privateConstructorUsedError;

  /// Serializes this Shipyard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shipyard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipyardCopyWith<Shipyard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipyardCopyWith<$Res> {
  factory $ShipyardCopyWith(Shipyard value, $Res Function(Shipyard) then) =
      _$ShipyardCopyWithImpl<$Res, Shipyard>;
  @useResult
  $Res call(
      {String symbol,
      List<ShipyardShip> ships,
      List<String> shipTypes,
      Map<String, dynamic> transactions,
      String? factionSymbol});
}

/// @nodoc
class _$ShipyardCopyWithImpl<$Res, $Val extends Shipyard>
    implements $ShipyardCopyWith<$Res> {
  _$ShipyardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shipyard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? ships = null,
    Object? shipTypes = null,
    Object? transactions = null,
    Object? factionSymbol = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      ships: null == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<ShipyardShip>,
      shipTypes: null == shipTypes
          ? _value.shipTypes
          : shipTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      factionSymbol: freezed == factionSymbol
          ? _value.factionSymbol
          : factionSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipyardImplCopyWith<$Res>
    implements $ShipyardCopyWith<$Res> {
  factory _$$ShipyardImplCopyWith(
          _$ShipyardImpl value, $Res Function(_$ShipyardImpl) then) =
      __$$ShipyardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      List<ShipyardShip> ships,
      List<String> shipTypes,
      Map<String, dynamic> transactions,
      String? factionSymbol});
}

/// @nodoc
class __$$ShipyardImplCopyWithImpl<$Res>
    extends _$ShipyardCopyWithImpl<$Res, _$ShipyardImpl>
    implements _$$ShipyardImplCopyWith<$Res> {
  __$$ShipyardImplCopyWithImpl(
      _$ShipyardImpl _value, $Res Function(_$ShipyardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shipyard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? ships = null,
    Object? shipTypes = null,
    Object? transactions = null,
    Object? factionSymbol = freezed,
  }) {
    return _then(_$ShipyardImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      ships: null == ships
          ? _value._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<ShipyardShip>,
      shipTypes: null == shipTypes
          ? _value._shipTypes
          : shipTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      factionSymbol: freezed == factionSymbol
          ? _value.factionSymbol
          : factionSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipyardImpl implements _Shipyard {
  const _$ShipyardImpl(
      {required this.symbol,
      final List<ShipyardShip> ships = const [],
      final List<String> shipTypes = const [],
      final Map<String, dynamic> transactions = const {},
      this.factionSymbol})
      : _ships = ships,
        _shipTypes = shipTypes,
        _transactions = transactions;

  factory _$ShipyardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipyardImplFromJson(json);

  @override
  final String symbol;
  final List<ShipyardShip> _ships;
  @override
  @JsonKey()
  List<ShipyardShip> get ships {
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ships);
  }

  final List<String> _shipTypes;
  @override
  @JsonKey()
  List<String> get shipTypes {
    if (_shipTypes is EqualUnmodifiableListView) return _shipTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipTypes);
  }

  final Map<String, dynamic> _transactions;
  @override
  @JsonKey()
  Map<String, dynamic> get transactions {
    if (_transactions is EqualUnmodifiableMapView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_transactions);
  }

  @override
  final String? factionSymbol;

  @override
  String toString() {
    return 'Shipyard(symbol: $symbol, ships: $ships, shipTypes: $shipTypes, transactions: $transactions, factionSymbol: $factionSymbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipyardImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality().equals(other._ships, _ships) &&
            const DeepCollectionEquality()
                .equals(other._shipTypes, _shipTypes) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.factionSymbol, factionSymbol) ||
                other.factionSymbol == factionSymbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      const DeepCollectionEquality().hash(_ships),
      const DeepCollectionEquality().hash(_shipTypes),
      const DeepCollectionEquality().hash(_transactions),
      factionSymbol);

  /// Create a copy of Shipyard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipyardImplCopyWith<_$ShipyardImpl> get copyWith =>
      __$$ShipyardImplCopyWithImpl<_$ShipyardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipyardImplToJson(
      this,
    );
  }
}

abstract class _Shipyard implements Shipyard {
  const factory _Shipyard(
      {required final String symbol,
      final List<ShipyardShip> ships,
      final List<String> shipTypes,
      final Map<String, dynamic> transactions,
      final String? factionSymbol}) = _$ShipyardImpl;

  factory _Shipyard.fromJson(Map<String, dynamic> json) =
      _$ShipyardImpl.fromJson;

  @override
  String get symbol;
  @override
  List<ShipyardShip> get ships;
  @override
  List<String> get shipTypes;
  @override
  Map<String, dynamic> get transactions;
  @override
  String? get factionSymbol;

  /// Create a copy of Shipyard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipyardImplCopyWith<_$ShipyardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
