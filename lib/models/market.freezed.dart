// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Market _$MarketFromJson(Map<String, dynamic> json) {
  return _Market.fromJson(json);
}

/// @nodoc
mixin _$Market {
  String get symbol => throw _privateConstructorUsedError;
  List<MarketTradeGoods> get tradeGoods => throw _privateConstructorUsedError;
  List<Exchange> get transactions => throw _privateConstructorUsedError;
  List<String> get imports => throw _privateConstructorUsedError;
  List<String> get exports => throw _privateConstructorUsedError;
  List<String> get exchange => throw _privateConstructorUsedError;

  /// Serializes this Market to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Market
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketCopyWith<Market> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketCopyWith<$Res> {
  factory $MarketCopyWith(Market value, $Res Function(Market) then) =
      _$MarketCopyWithImpl<$Res, Market>;
  @useResult
  $Res call(
      {String symbol,
      List<MarketTradeGoods> tradeGoods,
      List<Exchange> transactions,
      List<String> imports,
      List<String> exports,
      List<String> exchange});
}

/// @nodoc
class _$MarketCopyWithImpl<$Res, $Val extends Market>
    implements $MarketCopyWith<$Res> {
  _$MarketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Market
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? tradeGoods = null,
    Object? transactions = null,
    Object? imports = null,
    Object? exports = null,
    Object? exchange = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      tradeGoods: null == tradeGoods
          ? _value.tradeGoods
          : tradeGoods // ignore: cast_nullable_to_non_nullable
              as List<MarketTradeGoods>,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
      imports: null == imports
          ? _value.imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exports: null == exports
          ? _value.exports
          : exports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketImplCopyWith<$Res> implements $MarketCopyWith<$Res> {
  factory _$$MarketImplCopyWith(
          _$MarketImpl value, $Res Function(_$MarketImpl) then) =
      __$$MarketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      List<MarketTradeGoods> tradeGoods,
      List<Exchange> transactions,
      List<String> imports,
      List<String> exports,
      List<String> exchange});
}

/// @nodoc
class __$$MarketImplCopyWithImpl<$Res>
    extends _$MarketCopyWithImpl<$Res, _$MarketImpl>
    implements _$$MarketImplCopyWith<$Res> {
  __$$MarketImplCopyWithImpl(
      _$MarketImpl _value, $Res Function(_$MarketImpl) _then)
      : super(_value, _then);

  /// Create a copy of Market
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? tradeGoods = null,
    Object? transactions = null,
    Object? imports = null,
    Object? exports = null,
    Object? exchange = null,
  }) {
    return _then(_$MarketImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      tradeGoods: null == tradeGoods
          ? _value._tradeGoods
          : tradeGoods // ignore: cast_nullable_to_non_nullable
              as List<MarketTradeGoods>,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
      imports: null == imports
          ? _value._imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exports: null == exports
          ? _value._exports
          : exports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exchange: null == exchange
          ? _value._exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketImpl implements _Market {
  const _$MarketImpl(
      {required this.symbol,
      final List<MarketTradeGoods> tradeGoods = const [],
      final List<Exchange> transactions = const [],
      final List<String> imports = const [],
      final List<String> exports = const [],
      final List<String> exchange = const []})
      : _tradeGoods = tradeGoods,
        _transactions = transactions,
        _imports = imports,
        _exports = exports,
        _exchange = exchange;

  factory _$MarketImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketImplFromJson(json);

  @override
  final String symbol;
  final List<MarketTradeGoods> _tradeGoods;
  @override
  @JsonKey()
  List<MarketTradeGoods> get tradeGoods {
    if (_tradeGoods is EqualUnmodifiableListView) return _tradeGoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tradeGoods);
  }

  final List<Exchange> _transactions;
  @override
  @JsonKey()
  List<Exchange> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<String> _imports;
  @override
  @JsonKey()
  List<String> get imports {
    if (_imports is EqualUnmodifiableListView) return _imports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imports);
  }

  final List<String> _exports;
  @override
  @JsonKey()
  List<String> get exports {
    if (_exports is EqualUnmodifiableListView) return _exports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exports);
  }

  final List<String> _exchange;
  @override
  @JsonKey()
  List<String> get exchange {
    if (_exchange is EqualUnmodifiableListView) return _exchange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchange);
  }

  @override
  String toString() {
    return 'Market(symbol: $symbol, tradeGoods: $tradeGoods, transactions: $transactions, imports: $imports, exports: $exports, exchange: $exchange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality()
                .equals(other._tradeGoods, _tradeGoods) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._imports, _imports) &&
            const DeepCollectionEquality().equals(other._exports, _exports) &&
            const DeepCollectionEquality().equals(other._exchange, _exchange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      const DeepCollectionEquality().hash(_tradeGoods),
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_imports),
      const DeepCollectionEquality().hash(_exports),
      const DeepCollectionEquality().hash(_exchange));

  /// Create a copy of Market
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketImplCopyWith<_$MarketImpl> get copyWith =>
      __$$MarketImplCopyWithImpl<_$MarketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketImplToJson(
      this,
    );
  }
}

abstract class _Market implements Market {
  const factory _Market(
      {required final String symbol,
      final List<MarketTradeGoods> tradeGoods,
      final List<Exchange> transactions,
      final List<String> imports,
      final List<String> exports,
      final List<String> exchange}) = _$MarketImpl;

  factory _Market.fromJson(Map<String, dynamic> json) = _$MarketImpl.fromJson;

  @override
  String get symbol;
  @override
  List<MarketTradeGoods> get tradeGoods;
  @override
  List<Exchange> get transactions;
  @override
  List<String> get imports;
  @override
  List<String> get exports;
  @override
  List<String> get exchange;

  /// Create a copy of Market
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketImplCopyWith<_$MarketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
