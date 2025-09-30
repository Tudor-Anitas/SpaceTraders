// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Departure _$DepartureFromJson(Map<String, dynamic> json) {
  return _Departure.fromJson(json);
}

/// @nodoc
mixin _$Departure {
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get systemSymbol => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  /// Serializes this Departure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Departure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartureCopyWith<Departure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartureCopyWith<$Res> {
  factory $DepartureCopyWith(Departure value, $Res Function(Departure) then) =
      _$DepartureCopyWithImpl<$Res, Departure>;
  @useResult
  $Res call({String symbol, String type, String systemSymbol, int x, int y});
}

/// @nodoc
class _$DepartureCopyWithImpl<$Res, $Val extends Departure>
    implements $DepartureCopyWith<$Res> {
  _$DepartureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Departure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? systemSymbol = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      systemSymbol: null == systemSymbol
          ? _value.systemSymbol
          : systemSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartureImplCopyWith<$Res>
    implements $DepartureCopyWith<$Res> {
  factory _$$DepartureImplCopyWith(
          _$DepartureImpl value, $Res Function(_$DepartureImpl) then) =
      __$$DepartureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String type, String systemSymbol, int x, int y});
}

/// @nodoc
class __$$DepartureImplCopyWithImpl<$Res>
    extends _$DepartureCopyWithImpl<$Res, _$DepartureImpl>
    implements _$$DepartureImplCopyWith<$Res> {
  __$$DepartureImplCopyWithImpl(
      _$DepartureImpl _value, $Res Function(_$DepartureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Departure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? systemSymbol = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$DepartureImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      systemSymbol: null == systemSymbol
          ? _value.systemSymbol
          : systemSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartureImpl implements _Departure {
  const _$DepartureImpl(
      {this.symbol = '',
      this.type = '',
      this.systemSymbol = '',
      this.x = 0,
      this.y = 0});

  factory _$DepartureImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartureImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String systemSymbol;
  @override
  @JsonKey()
  final int x;
  @override
  @JsonKey()
  final int y;

  @override
  String toString() {
    return 'Departure(symbol: $symbol, type: $type, systemSymbol: $systemSymbol, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartureImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.systemSymbol, systemSymbol) ||
                other.systemSymbol == systemSymbol) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, type, systemSymbol, x, y);

  /// Create a copy of Departure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartureImplCopyWith<_$DepartureImpl> get copyWith =>
      __$$DepartureImplCopyWithImpl<_$DepartureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartureImplToJson(
      this,
    );
  }
}

abstract class _Departure implements Departure {
  const factory _Departure(
      {final String symbol,
      final String type,
      final String systemSymbol,
      final int x,
      final int y}) = _$DepartureImpl;

  factory _Departure.fromJson(Map<String, dynamic> json) =
      _$DepartureImpl.fromJson;

  @override
  String get symbol;
  @override
  String get type;
  @override
  String get systemSymbol;
  @override
  int get x;
  @override
  int get y;

  /// Create a copy of Departure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartureImplCopyWith<_$DepartureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
