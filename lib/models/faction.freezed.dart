// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Faction _$FactionFromJson(Map<String, dynamic> json) {
  return _Faction.fromJson(json);
}

/// @nodoc
mixin _$Faction {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get headquarters => throw _privateConstructorUsedError;
  List<FactionTrait> get traits => throw _privateConstructorUsedError;
  bool get isRecruiting => throw _privateConstructorUsedError;

  /// Serializes this Faction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Faction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactionCopyWith<Faction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactionCopyWith<$Res> {
  factory $FactionCopyWith(Faction value, $Res Function(Faction) then) =
      _$FactionCopyWithImpl<$Res, Faction>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      String headquarters,
      List<FactionTrait> traits,
      bool isRecruiting});
}

/// @nodoc
class _$FactionCopyWithImpl<$Res, $Val extends Faction>
    implements $FactionCopyWith<$Res> {
  _$FactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Faction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? headquarters = null,
    Object? traits = null,
    Object? isRecruiting = null,
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
      headquarters: null == headquarters
          ? _value.headquarters
          : headquarters // ignore: cast_nullable_to_non_nullable
              as String,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<FactionTrait>,
      isRecruiting: null == isRecruiting
          ? _value.isRecruiting
          : isRecruiting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactionImplCopyWith<$Res> implements $FactionCopyWith<$Res> {
  factory _$$FactionImplCopyWith(
          _$FactionImpl value, $Res Function(_$FactionImpl) then) =
      __$$FactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      String headquarters,
      List<FactionTrait> traits,
      bool isRecruiting});
}

/// @nodoc
class __$$FactionImplCopyWithImpl<$Res>
    extends _$FactionCopyWithImpl<$Res, _$FactionImpl>
    implements _$$FactionImplCopyWith<$Res> {
  __$$FactionImplCopyWithImpl(
      _$FactionImpl _value, $Res Function(_$FactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Faction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? headquarters = null,
    Object? traits = null,
    Object? isRecruiting = null,
  }) {
    return _then(_$FactionImpl(
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
      headquarters: null == headquarters
          ? _value.headquarters
          : headquarters // ignore: cast_nullable_to_non_nullable
              as String,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<FactionTrait>,
      isRecruiting: null == isRecruiting
          ? _value.isRecruiting
          : isRecruiting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactionImpl implements _Faction {
  const _$FactionImpl(
      {this.symbol = '',
      this.name = '',
      this.description = '',
      this.headquarters = '',
      final List<FactionTrait> traits = const [],
      this.isRecruiting = false})
      : _traits = traits;

  factory _$FactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactionImplFromJson(json);

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
  final String headquarters;
  final List<FactionTrait> _traits;
  @override
  @JsonKey()
  List<FactionTrait> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  @override
  @JsonKey()
  final bool isRecruiting;

  @override
  String toString() {
    return 'Faction(symbol: $symbol, name: $name, description: $description, headquarters: $headquarters, traits: $traits, isRecruiting: $isRecruiting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactionImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.headquarters, headquarters) ||
                other.headquarters == headquarters) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            (identical(other.isRecruiting, isRecruiting) ||
                other.isRecruiting == isRecruiting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description,
      headquarters, const DeepCollectionEquality().hash(_traits), isRecruiting);

  /// Create a copy of Faction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactionImplCopyWith<_$FactionImpl> get copyWith =>
      __$$FactionImplCopyWithImpl<_$FactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactionImplToJson(
      this,
    );
  }
}

abstract class _Faction implements Faction {
  const factory _Faction(
      {final String symbol,
      final String name,
      final String description,
      final String headquarters,
      final List<FactionTrait> traits,
      final bool isRecruiting}) = _$FactionImpl;

  factory _Faction.fromJson(Map<String, dynamic> json) = _$FactionImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;
  @override
  String get headquarters;
  @override
  List<FactionTrait> get traits;
  @override
  bool get isRecruiting;

  /// Create a copy of Faction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactionImplCopyWith<_$FactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
