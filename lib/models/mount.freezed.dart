// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Mount _$MountFromJson(Map<String, dynamic> json) {
  return _Mount.fromJson(json);
}

/// @nodoc
mixin _$Mount {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get strength => throw _privateConstructorUsedError;
  List<String> get deposits => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  /// Serializes this Mount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Mount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MountCopyWith<Mount> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MountCopyWith<$Res> {
  factory $MountCopyWith(Mount value, $Res Function(Mount) then) =
      _$MountCopyWithImpl<$Res, Mount>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      int strength,
      List<String> deposits,
      Requirements requirements});

  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$MountCopyWithImpl<$Res, $Val extends Mount>
    implements $MountCopyWith<$Res> {
  _$MountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? strength = null,
    Object? deposits = null,
    Object? requirements = null,
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
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as int,
      deposits: null == deposits
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  /// Create a copy of Mount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequirementsCopyWith<$Res> get requirements {
    return $RequirementsCopyWith<$Res>(_value.requirements, (value) {
      return _then(_value.copyWith(requirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MountImplCopyWith<$Res> implements $MountCopyWith<$Res> {
  factory _$$MountImplCopyWith(
          _$MountImpl value, $Res Function(_$MountImpl) then) =
      __$$MountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      int strength,
      List<String> deposits,
      Requirements requirements});

  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$MountImplCopyWithImpl<$Res>
    extends _$MountCopyWithImpl<$Res, _$MountImpl>
    implements _$$MountImplCopyWith<$Res> {
  __$$MountImplCopyWithImpl(
      _$MountImpl _value, $Res Function(_$MountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Mount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? strength = null,
    Object? deposits = null,
    Object? requirements = null,
  }) {
    return _then(_$MountImpl(
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
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as int,
      deposits: null == deposits
          ? _value._deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MountImpl implements _Mount {
  const _$MountImpl(
      {this.symbol = '',
      this.name = '',
      this.description = '',
      this.strength = 0,
      final List<String> deposits = const [],
      this.requirements = const Requirements()})
      : _deposits = deposits;

  factory _$MountImpl.fromJson(Map<String, dynamic> json) =>
      _$$MountImplFromJson(json);

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
  @JsonKey()
  final int strength;
  final List<String> _deposits;
  @override
  @JsonKey()
  List<String> get deposits {
    if (_deposits is EqualUnmodifiableListView) return _deposits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deposits);
  }

  @override
  @JsonKey()
  final Requirements requirements;

  @override
  String toString() {
    return 'Mount(symbol: $symbol, name: $name, description: $description, strength: $strength, deposits: $deposits, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MountImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            const DeepCollectionEquality().equals(other._deposits, _deposits) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description,
      strength, const DeepCollectionEquality().hash(_deposits), requirements);

  /// Create a copy of Mount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MountImplCopyWith<_$MountImpl> get copyWith =>
      __$$MountImplCopyWithImpl<_$MountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MountImplToJson(
      this,
    );
  }
}

abstract class _Mount implements Mount {
  const factory _Mount(
      {final String symbol,
      final String name,
      final String description,
      final int strength,
      final List<String> deposits,
      final Requirements requirements}) = _$MountImpl;

  factory _Mount.fromJson(Map<String, dynamic> json) = _$MountImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;
  @override
  int get strength;
  @override
  List<String> get deposits;
  @override
  Requirements get requirements;

  /// Create a copy of Mount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MountImplCopyWith<_$MountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
