// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faction_trait.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FactionTrait _$FactionTraitFromJson(Map<String, dynamic> json) {
  return _FactionTrait.fromJson(json);
}

/// @nodoc
mixin _$FactionTrait {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this FactionTrait to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FactionTrait
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactionTraitCopyWith<FactionTrait> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactionTraitCopyWith<$Res> {
  factory $FactionTraitCopyWith(
          FactionTrait value, $Res Function(FactionTrait) then) =
      _$FactionTraitCopyWithImpl<$Res, FactionTrait>;
  @useResult
  $Res call({String symbol, String name, String description});
}

/// @nodoc
class _$FactionTraitCopyWithImpl<$Res, $Val extends FactionTrait>
    implements $FactionTraitCopyWith<$Res> {
  _$FactionTraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FactionTrait
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactionTraitImplCopyWith<$Res>
    implements $FactionTraitCopyWith<$Res> {
  factory _$$FactionTraitImplCopyWith(
          _$FactionTraitImpl value, $Res Function(_$FactionTraitImpl) then) =
      __$$FactionTraitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String name, String description});
}

/// @nodoc
class __$$FactionTraitImplCopyWithImpl<$Res>
    extends _$FactionTraitCopyWithImpl<$Res, _$FactionTraitImpl>
    implements _$$FactionTraitImplCopyWith<$Res> {
  __$$FactionTraitImplCopyWithImpl(
      _$FactionTraitImpl _value, $Res Function(_$FactionTraitImpl) _then)
      : super(_value, _then);

  /// Create a copy of FactionTrait
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$FactionTraitImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactionTraitImpl implements _FactionTrait {
  const _$FactionTraitImpl(
      {this.symbol = '', this.name = '', this.description = ''});

  factory _$FactionTraitImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactionTraitImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'FactionTrait(symbol: $symbol, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactionTraitImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description);

  /// Create a copy of FactionTrait
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactionTraitImplCopyWith<_$FactionTraitImpl> get copyWith =>
      __$$FactionTraitImplCopyWithImpl<_$FactionTraitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactionTraitImplToJson(
      this,
    );
  }
}

abstract class _FactionTrait implements FactionTrait {
  const factory _FactionTrait(
      {final String symbol,
      final String name,
      final String description}) = _$FactionTraitImpl;

  factory _FactionTrait.fromJson(Map<String, dynamic> json) =
      _$FactionTraitImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of FactionTrait
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactionTraitImplCopyWith<_$FactionTraitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
