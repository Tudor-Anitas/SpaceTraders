// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return _Agent.fromJson(json);
}

/// @nodoc
mixin _$Agent {
  String get accountId => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get headquarters => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;
  String get startingFaction => throw _privateConstructorUsedError;
  int get shipCount => throw _privateConstructorUsedError;

  /// Serializes this Agent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res, Agent>;
  @useResult
  $Res call(
      {String accountId,
      String symbol,
      String headquarters,
      int credits,
      String startingFaction,
      int shipCount});
}

/// @nodoc
class _$AgentCopyWithImpl<$Res, $Val extends Agent>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? symbol = null,
    Object? headquarters = null,
    Object? credits = null,
    Object? startingFaction = null,
    Object? shipCount = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      headquarters: null == headquarters
          ? _value.headquarters
          : headquarters // ignore: cast_nullable_to_non_nullable
              as String,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int,
      startingFaction: null == startingFaction
          ? _value.startingFaction
          : startingFaction // ignore: cast_nullable_to_non_nullable
              as String,
      shipCount: null == shipCount
          ? _value.shipCount
          : shipCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentImplCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$AgentImplCopyWith(
          _$AgentImpl value, $Res Function(_$AgentImpl) then) =
      __$$AgentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountId,
      String symbol,
      String headquarters,
      int credits,
      String startingFaction,
      int shipCount});
}

/// @nodoc
class __$$AgentImplCopyWithImpl<$Res>
    extends _$AgentCopyWithImpl<$Res, _$AgentImpl>
    implements _$$AgentImplCopyWith<$Res> {
  __$$AgentImplCopyWithImpl(
      _$AgentImpl _value, $Res Function(_$AgentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? symbol = null,
    Object? headquarters = null,
    Object? credits = null,
    Object? startingFaction = null,
    Object? shipCount = null,
  }) {
    return _then(_$AgentImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      headquarters: null == headquarters
          ? _value.headquarters
          : headquarters // ignore: cast_nullable_to_non_nullable
              as String,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int,
      startingFaction: null == startingFaction
          ? _value.startingFaction
          : startingFaction // ignore: cast_nullable_to_non_nullable
              as String,
      shipCount: null == shipCount
          ? _value.shipCount
          : shipCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentImpl implements _Agent {
  const _$AgentImpl(
      {this.accountId = '',
      this.symbol = '',
      this.headquarters = '',
      this.credits = 0,
      this.startingFaction = '',
      this.shipCount = 0});

  factory _$AgentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentImplFromJson(json);

  @override
  @JsonKey()
  final String accountId;
  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String headquarters;
  @override
  @JsonKey()
  final int credits;
  @override
  @JsonKey()
  final String startingFaction;
  @override
  @JsonKey()
  final int shipCount;

  @override
  String toString() {
    return 'Agent(accountId: $accountId, symbol: $symbol, headquarters: $headquarters, credits: $credits, startingFaction: $startingFaction, shipCount: $shipCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.headquarters, headquarters) ||
                other.headquarters == headquarters) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.startingFaction, startingFaction) ||
                other.startingFaction == startingFaction) &&
            (identical(other.shipCount, shipCount) ||
                other.shipCount == shipCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, symbol, headquarters,
      credits, startingFaction, shipCount);

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentImplCopyWith<_$AgentImpl> get copyWith =>
      __$$AgentImplCopyWithImpl<_$AgentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentImplToJson(
      this,
    );
  }
}

abstract class _Agent implements Agent {
  const factory _Agent(
      {final String accountId,
      final String symbol,
      final String headquarters,
      final int credits,
      final String startingFaction,
      final int shipCount}) = _$AgentImpl;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$AgentImpl.fromJson;

  @override
  String get accountId;
  @override
  String get symbol;
  @override
  String get headquarters;
  @override
  int get credits;
  @override
  String get startingFaction;
  @override
  int get shipCount;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentImplCopyWith<_$AgentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
