// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cooldown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cooldown _$CooldownFromJson(Map<String, dynamic> json) {
  return _Cooldown.fromJson(json);
}

/// @nodoc
mixin _$Cooldown {
  String get shipSymbol => throw _privateConstructorUsedError;
  int get totalSeconds => throw _privateConstructorUsedError;
  int get remainingSeconds => throw _privateConstructorUsedError;
  String get expiration => throw _privateConstructorUsedError;

  /// Serializes this Cooldown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cooldown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CooldownCopyWith<Cooldown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CooldownCopyWith<$Res> {
  factory $CooldownCopyWith(Cooldown value, $Res Function(Cooldown) then) =
      _$CooldownCopyWithImpl<$Res, Cooldown>;
  @useResult
  $Res call(
      {String shipSymbol,
      int totalSeconds,
      int remainingSeconds,
      String expiration});
}

/// @nodoc
class _$CooldownCopyWithImpl<$Res, $Val extends Cooldown>
    implements $CooldownCopyWith<$Res> {
  _$CooldownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cooldown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipSymbol = null,
    Object? totalSeconds = null,
    Object? remainingSeconds = null,
    Object? expiration = null,
  }) {
    return _then(_value.copyWith(
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      totalSeconds: null == totalSeconds
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CooldownImplCopyWith<$Res>
    implements $CooldownCopyWith<$Res> {
  factory _$$CooldownImplCopyWith(
          _$CooldownImpl value, $Res Function(_$CooldownImpl) then) =
      __$$CooldownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shipSymbol,
      int totalSeconds,
      int remainingSeconds,
      String expiration});
}

/// @nodoc
class __$$CooldownImplCopyWithImpl<$Res>
    extends _$CooldownCopyWithImpl<$Res, _$CooldownImpl>
    implements _$$CooldownImplCopyWith<$Res> {
  __$$CooldownImplCopyWithImpl(
      _$CooldownImpl _value, $Res Function(_$CooldownImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cooldown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipSymbol = null,
    Object? totalSeconds = null,
    Object? remainingSeconds = null,
    Object? expiration = null,
  }) {
    return _then(_$CooldownImpl(
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      totalSeconds: null == totalSeconds
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CooldownImpl implements _Cooldown {
  const _$CooldownImpl(
      {this.shipSymbol = '',
      this.totalSeconds = 0,
      this.remainingSeconds = 0,
      this.expiration = ''});

  factory _$CooldownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CooldownImplFromJson(json);

  @override
  @JsonKey()
  final String shipSymbol;
  @override
  @JsonKey()
  final int totalSeconds;
  @override
  @JsonKey()
  final int remainingSeconds;
  @override
  @JsonKey()
  final String expiration;

  @override
  String toString() {
    return 'Cooldown(shipSymbol: $shipSymbol, totalSeconds: $totalSeconds, remainingSeconds: $remainingSeconds, expiration: $expiration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CooldownImpl &&
            (identical(other.shipSymbol, shipSymbol) ||
                other.shipSymbol == shipSymbol) &&
            (identical(other.totalSeconds, totalSeconds) ||
                other.totalSeconds == totalSeconds) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, shipSymbol, totalSeconds, remainingSeconds, expiration);

  /// Create a copy of Cooldown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CooldownImplCopyWith<_$CooldownImpl> get copyWith =>
      __$$CooldownImplCopyWithImpl<_$CooldownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CooldownImplToJson(
      this,
    );
  }
}

abstract class _Cooldown implements Cooldown {
  const factory _Cooldown(
      {final String shipSymbol,
      final int totalSeconds,
      final int remainingSeconds,
      final String expiration}) = _$CooldownImpl;

  factory _Cooldown.fromJson(Map<String, dynamic> json) =
      _$CooldownImpl.fromJson;

  @override
  String get shipSymbol;
  @override
  int get totalSeconds;
  @override
  int get remainingSeconds;
  @override
  String get expiration;

  /// Create a copy of Cooldown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CooldownImplCopyWith<_$CooldownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
