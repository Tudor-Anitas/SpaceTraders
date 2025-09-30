// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Extraction _$ExtractionFromJson(Map<String, dynamic> json) {
  return _Extraction.fromJson(json);
}

/// @nodoc
mixin _$Extraction {
  String get shipSymbol => throw _privateConstructorUsedError;
  ExtractionYield get extractionYield => throw _privateConstructorUsedError;

  /// Serializes this Extraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Extraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractionCopyWith<Extraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractionCopyWith<$Res> {
  factory $ExtractionCopyWith(
          Extraction value, $Res Function(Extraction) then) =
      _$ExtractionCopyWithImpl<$Res, Extraction>;
  @useResult
  $Res call({String shipSymbol, ExtractionYield extractionYield});

  $ExtractionYieldCopyWith<$Res> get extractionYield;
}

/// @nodoc
class _$ExtractionCopyWithImpl<$Res, $Val extends Extraction>
    implements $ExtractionCopyWith<$Res> {
  _$ExtractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Extraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipSymbol = null,
    Object? extractionYield = null,
  }) {
    return _then(_value.copyWith(
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      extractionYield: null == extractionYield
          ? _value.extractionYield
          : extractionYield // ignore: cast_nullable_to_non_nullable
              as ExtractionYield,
    ) as $Val);
  }

  /// Create a copy of Extraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtractionYieldCopyWith<$Res> get extractionYield {
    return $ExtractionYieldCopyWith<$Res>(_value.extractionYield, (value) {
      return _then(_value.copyWith(extractionYield: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtractionImplCopyWith<$Res>
    implements $ExtractionCopyWith<$Res> {
  factory _$$ExtractionImplCopyWith(
          _$ExtractionImpl value, $Res Function(_$ExtractionImpl) then) =
      __$$ExtractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shipSymbol, ExtractionYield extractionYield});

  @override
  $ExtractionYieldCopyWith<$Res> get extractionYield;
}

/// @nodoc
class __$$ExtractionImplCopyWithImpl<$Res>
    extends _$ExtractionCopyWithImpl<$Res, _$ExtractionImpl>
    implements _$$ExtractionImplCopyWith<$Res> {
  __$$ExtractionImplCopyWithImpl(
      _$ExtractionImpl _value, $Res Function(_$ExtractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Extraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipSymbol = null,
    Object? extractionYield = null,
  }) {
    return _then(_$ExtractionImpl(
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      extractionYield: null == extractionYield
          ? _value.extractionYield
          : extractionYield // ignore: cast_nullable_to_non_nullable
              as ExtractionYield,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractionImpl implements _Extraction {
  const _$ExtractionImpl(
      {this.shipSymbol = '', this.extractionYield = const ExtractionYield()});

  factory _$ExtractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractionImplFromJson(json);

  @override
  @JsonKey()
  final String shipSymbol;
  @override
  @JsonKey()
  final ExtractionYield extractionYield;

  @override
  String toString() {
    return 'Extraction(shipSymbol: $shipSymbol, extractionYield: $extractionYield)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractionImpl &&
            (identical(other.shipSymbol, shipSymbol) ||
                other.shipSymbol == shipSymbol) &&
            (identical(other.extractionYield, extractionYield) ||
                other.extractionYield == extractionYield));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shipSymbol, extractionYield);

  /// Create a copy of Extraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractionImplCopyWith<_$ExtractionImpl> get copyWith =>
      __$$ExtractionImplCopyWithImpl<_$ExtractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractionImplToJson(
      this,
    );
  }
}

abstract class _Extraction implements Extraction {
  const factory _Extraction(
      {final String shipSymbol,
      final ExtractionYield extractionYield}) = _$ExtractionImpl;

  factory _Extraction.fromJson(Map<String, dynamic> json) =
      _$ExtractionImpl.fromJson;

  @override
  String get shipSymbol;
  @override
  ExtractionYield get extractionYield;

  /// Create a copy of Extraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractionImplCopyWith<_$ExtractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
