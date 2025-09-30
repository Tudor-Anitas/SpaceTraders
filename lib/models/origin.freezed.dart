// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Origin _$OriginFromJson(Map<String, dynamic> json) {
  return _Origin.fromJson(json);
}

/// @nodoc
mixin _$Origin {
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get systemSymbol => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  /// Serializes this Origin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OriginCopyWith<Origin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginCopyWith<$Res> {
  factory $OriginCopyWith(Origin value, $Res Function(Origin) then) =
      _$OriginCopyWithImpl<$Res, Origin>;
  @useResult
  $Res call({String symbol, String type, String systemSymbol, int x, int y});
}

/// @nodoc
class _$OriginCopyWithImpl<$Res, $Val extends Origin>
    implements $OriginCopyWith<$Res> {
  _$OriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Origin
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
abstract class _$$OriginImplCopyWith<$Res> implements $OriginCopyWith<$Res> {
  factory _$$OriginImplCopyWith(
          _$OriginImpl value, $Res Function(_$OriginImpl) then) =
      __$$OriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String type, String systemSymbol, int x, int y});
}

/// @nodoc
class __$$OriginImplCopyWithImpl<$Res>
    extends _$OriginCopyWithImpl<$Res, _$OriginImpl>
    implements _$$OriginImplCopyWith<$Res> {
  __$$OriginImplCopyWithImpl(
      _$OriginImpl _value, $Res Function(_$OriginImpl) _then)
      : super(_value, _then);

  /// Create a copy of Origin
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
    return _then(_$OriginImpl(
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
class _$OriginImpl implements _Origin {
  const _$OriginImpl(
      {this.symbol = '',
      this.type = '',
      this.systemSymbol = '',
      this.x = 0,
      this.y = 0});

  factory _$OriginImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginImplFromJson(json);

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
    return 'Origin(symbol: $symbol, type: $type, systemSymbol: $systemSymbol, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginImpl &&
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

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith =>
      __$$OriginImplCopyWithImpl<_$OriginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginImplToJson(
      this,
    );
  }
}

abstract class _Origin implements Origin {
  const factory _Origin(
      {final String symbol,
      final String type,
      final String systemSymbol,
      final int x,
      final int y}) = _$OriginImpl;

  factory _Origin.fromJson(Map<String, dynamic> json) = _$OriginImpl.fromJson;

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

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
