// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jump_gate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JumpGate _$JumpGateFromJson(Map<String, dynamic> json) {
  return _JumpGate.fromJson(json);
}

/// @nodoc
mixin _$JumpGate {
  List<String> get connections => throw _privateConstructorUsedError;

  /// Serializes this JumpGate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JumpGate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JumpGateCopyWith<JumpGate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JumpGateCopyWith<$Res> {
  factory $JumpGateCopyWith(JumpGate value, $Res Function(JumpGate) then) =
      _$JumpGateCopyWithImpl<$Res, JumpGate>;
  @useResult
  $Res call({List<String> connections});
}

/// @nodoc
class _$JumpGateCopyWithImpl<$Res, $Val extends JumpGate>
    implements $JumpGateCopyWith<$Res> {
  _$JumpGateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JumpGate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connections = null,
  }) {
    return _then(_value.copyWith(
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JumpGateImplCopyWith<$Res>
    implements $JumpGateCopyWith<$Res> {
  factory _$$JumpGateImplCopyWith(
          _$JumpGateImpl value, $Res Function(_$JumpGateImpl) then) =
      __$$JumpGateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> connections});
}

/// @nodoc
class __$$JumpGateImplCopyWithImpl<$Res>
    extends _$JumpGateCopyWithImpl<$Res, _$JumpGateImpl>
    implements _$$JumpGateImplCopyWith<$Res> {
  __$$JumpGateImplCopyWithImpl(
      _$JumpGateImpl _value, $Res Function(_$JumpGateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JumpGate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connections = null,
  }) {
    return _then(_$JumpGateImpl(
      connections: null == connections
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JumpGateImpl implements _JumpGate {
  const _$JumpGateImpl({final List<String> connections = const []})
      : _connections = connections;

  factory _$JumpGateImpl.fromJson(Map<String, dynamic> json) =>
      _$$JumpGateImplFromJson(json);

  final List<String> _connections;
  @override
  @JsonKey()
  List<String> get connections {
    if (_connections is EqualUnmodifiableListView) return _connections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  String toString() {
    return 'JumpGate(connections: $connections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JumpGateImpl &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_connections));

  /// Create a copy of JumpGate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JumpGateImplCopyWith<_$JumpGateImpl> get copyWith =>
      __$$JumpGateImplCopyWithImpl<_$JumpGateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JumpGateImplToJson(
      this,
    );
  }
}

abstract class _JumpGate implements JumpGate {
  const factory _JumpGate({final List<String> connections}) = _$JumpGateImpl;

  factory _JumpGate.fromJson(Map<String, dynamic> json) =
      _$JumpGateImpl.fromJson;

  @override
  List<String> get connections;

  /// Create a copy of JumpGate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JumpGateImplCopyWith<_$JumpGateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
