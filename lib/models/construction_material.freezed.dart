// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'construction_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConstructionMaterial _$ConstructionMaterialFromJson(Map<String, dynamic> json) {
  return _ConstructionMaterial.fromJson(json);
}

/// @nodoc
mixin _$ConstructionMaterial {
  String get tradeSymbol => throw _privateConstructorUsedError;
  int get requiredUnits => throw _privateConstructorUsedError;
  int get fulfilled => throw _privateConstructorUsedError;

  /// Serializes this ConstructionMaterial to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConstructionMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConstructionMaterialCopyWith<ConstructionMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstructionMaterialCopyWith<$Res> {
  factory $ConstructionMaterialCopyWith(ConstructionMaterial value,
          $Res Function(ConstructionMaterial) then) =
      _$ConstructionMaterialCopyWithImpl<$Res, ConstructionMaterial>;
  @useResult
  $Res call({String tradeSymbol, int requiredUnits, int fulfilled});
}

/// @nodoc
class _$ConstructionMaterialCopyWithImpl<$Res,
        $Val extends ConstructionMaterial>
    implements $ConstructionMaterialCopyWith<$Res> {
  _$ConstructionMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConstructionMaterial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeSymbol = null,
    Object? requiredUnits = null,
    Object? fulfilled = null,
  }) {
    return _then(_value.copyWith(
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      requiredUnits: null == requiredUnits
          ? _value.requiredUnits
          : requiredUnits // ignore: cast_nullable_to_non_nullable
              as int,
      fulfilled: null == fulfilled
          ? _value.fulfilled
          : fulfilled // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstructionMaterialImplCopyWith<$Res>
    implements $ConstructionMaterialCopyWith<$Res> {
  factory _$$ConstructionMaterialImplCopyWith(_$ConstructionMaterialImpl value,
          $Res Function(_$ConstructionMaterialImpl) then) =
      __$$ConstructionMaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tradeSymbol, int requiredUnits, int fulfilled});
}

/// @nodoc
class __$$ConstructionMaterialImplCopyWithImpl<$Res>
    extends _$ConstructionMaterialCopyWithImpl<$Res, _$ConstructionMaterialImpl>
    implements _$$ConstructionMaterialImplCopyWith<$Res> {
  __$$ConstructionMaterialImplCopyWithImpl(_$ConstructionMaterialImpl _value,
      $Res Function(_$ConstructionMaterialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConstructionMaterial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeSymbol = null,
    Object? requiredUnits = null,
    Object? fulfilled = null,
  }) {
    return _then(_$ConstructionMaterialImpl(
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      requiredUnits: null == requiredUnits
          ? _value.requiredUnits
          : requiredUnits // ignore: cast_nullable_to_non_nullable
              as int,
      fulfilled: null == fulfilled
          ? _value.fulfilled
          : fulfilled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstructionMaterialImpl implements _ConstructionMaterial {
  const _$ConstructionMaterialImpl(
      {this.tradeSymbol = '', this.requiredUnits = 0, this.fulfilled = 0});

  factory _$ConstructionMaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstructionMaterialImplFromJson(json);

  @override
  @JsonKey()
  final String tradeSymbol;
  @override
  @JsonKey()
  final int requiredUnits;
  @override
  @JsonKey()
  final int fulfilled;

  @override
  String toString() {
    return 'ConstructionMaterial(tradeSymbol: $tradeSymbol, requiredUnits: $requiredUnits, fulfilled: $fulfilled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstructionMaterialImpl &&
            (identical(other.tradeSymbol, tradeSymbol) ||
                other.tradeSymbol == tradeSymbol) &&
            (identical(other.requiredUnits, requiredUnits) ||
                other.requiredUnits == requiredUnits) &&
            (identical(other.fulfilled, fulfilled) ||
                other.fulfilled == fulfilled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tradeSymbol, requiredUnits, fulfilled);

  /// Create a copy of ConstructionMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstructionMaterialImplCopyWith<_$ConstructionMaterialImpl>
      get copyWith =>
          __$$ConstructionMaterialImplCopyWithImpl<_$ConstructionMaterialImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstructionMaterialImplToJson(
      this,
    );
  }
}

abstract class _ConstructionMaterial implements ConstructionMaterial {
  const factory _ConstructionMaterial(
      {final String tradeSymbol,
      final int requiredUnits,
      final int fulfilled}) = _$ConstructionMaterialImpl;

  factory _ConstructionMaterial.fromJson(Map<String, dynamic> json) =
      _$ConstructionMaterialImpl.fromJson;

  @override
  String get tradeSymbol;
  @override
  int get requiredUnits;
  @override
  int get fulfilled;

  /// Create a copy of ConstructionMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConstructionMaterialImplCopyWith<_$ConstructionMaterialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
