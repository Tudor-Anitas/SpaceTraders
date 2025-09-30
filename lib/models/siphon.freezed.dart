// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siphon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Siphon _$SiphonFromJson(Map<String, dynamic> json) {
  return _Siphon.fromJson(json);
}

/// @nodoc
mixin _$Siphon {
  String get shipSymbol => throw _privateConstructorUsedError;
  SiphonYield get siphonYield => throw _privateConstructorUsedError;

  /// Serializes this Siphon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Siphon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiphonCopyWith<Siphon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiphonCopyWith<$Res> {
  factory $SiphonCopyWith(Siphon value, $Res Function(Siphon) then) =
      _$SiphonCopyWithImpl<$Res, Siphon>;
  @useResult
  $Res call({String shipSymbol, SiphonYield siphonYield});

  $SiphonYieldCopyWith<$Res> get siphonYield;
}

/// @nodoc
class _$SiphonCopyWithImpl<$Res, $Val extends Siphon>
    implements $SiphonCopyWith<$Res> {
  _$SiphonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Siphon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipSymbol = null,
    Object? siphonYield = null,
  }) {
    return _then(_value.copyWith(
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      siphonYield: null == siphonYield
          ? _value.siphonYield
          : siphonYield // ignore: cast_nullable_to_non_nullable
              as SiphonYield,
    ) as $Val);
  }

  /// Create a copy of Siphon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiphonYieldCopyWith<$Res> get siphonYield {
    return $SiphonYieldCopyWith<$Res>(_value.siphonYield, (value) {
      return _then(_value.copyWith(siphonYield: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiphonImplCopyWith<$Res> implements $SiphonCopyWith<$Res> {
  factory _$$SiphonImplCopyWith(
          _$SiphonImpl value, $Res Function(_$SiphonImpl) then) =
      __$$SiphonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shipSymbol, SiphonYield siphonYield});

  @override
  $SiphonYieldCopyWith<$Res> get siphonYield;
}

/// @nodoc
class __$$SiphonImplCopyWithImpl<$Res>
    extends _$SiphonCopyWithImpl<$Res, _$SiphonImpl>
    implements _$$SiphonImplCopyWith<$Res> {
  __$$SiphonImplCopyWithImpl(
      _$SiphonImpl _value, $Res Function(_$SiphonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Siphon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipSymbol = null,
    Object? siphonYield = null,
  }) {
    return _then(_$SiphonImpl(
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      siphonYield: null == siphonYield
          ? _value.siphonYield
          : siphonYield // ignore: cast_nullable_to_non_nullable
              as SiphonYield,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiphonImpl implements _Siphon {
  const _$SiphonImpl(
      {this.shipSymbol = '', this.siphonYield = const SiphonYield()});

  factory _$SiphonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiphonImplFromJson(json);

  @override
  @JsonKey()
  final String shipSymbol;
  @override
  @JsonKey()
  final SiphonYield siphonYield;

  @override
  String toString() {
    return 'Siphon(shipSymbol: $shipSymbol, siphonYield: $siphonYield)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiphonImpl &&
            (identical(other.shipSymbol, shipSymbol) ||
                other.shipSymbol == shipSymbol) &&
            (identical(other.siphonYield, siphonYield) ||
                other.siphonYield == siphonYield));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shipSymbol, siphonYield);

  /// Create a copy of Siphon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiphonImplCopyWith<_$SiphonImpl> get copyWith =>
      __$$SiphonImplCopyWithImpl<_$SiphonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiphonImplToJson(
      this,
    );
  }
}

abstract class _Siphon implements Siphon {
  const factory _Siphon(
      {final String shipSymbol, final SiphonYield siphonYield}) = _$SiphonImpl;

  factory _Siphon.fromJson(Map<String, dynamic> json) = _$SiphonImpl.fromJson;

  @override
  String get shipSymbol;
  @override
  SiphonYield get siphonYield;

  /// Create a copy of Siphon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiphonImplCopyWith<_$SiphonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
