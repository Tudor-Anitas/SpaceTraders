// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Registration _$RegistrationFromJson(Map<String, dynamic> json) {
  return _Registration.fromJson(json);
}

/// @nodoc
mixin _$Registration {
  String get name => throw _privateConstructorUsedError;
  String get factionSymbol => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this Registration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationCopyWith<Registration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationCopyWith<$Res> {
  factory $RegistrationCopyWith(
          Registration value, $Res Function(Registration) then) =
      _$RegistrationCopyWithImpl<$Res, Registration>;
  @useResult
  $Res call({String name, String factionSymbol, String role});
}

/// @nodoc
class _$RegistrationCopyWithImpl<$Res, $Val extends Registration>
    implements $RegistrationCopyWith<$Res> {
  _$RegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? factionSymbol = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      factionSymbol: null == factionSymbol
          ? _value.factionSymbol
          : factionSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationImplCopyWith<$Res>
    implements $RegistrationCopyWith<$Res> {
  factory _$$RegistrationImplCopyWith(
          _$RegistrationImpl value, $Res Function(_$RegistrationImpl) then) =
      __$$RegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String factionSymbol, String role});
}

/// @nodoc
class __$$RegistrationImplCopyWithImpl<$Res>
    extends _$RegistrationCopyWithImpl<$Res, _$RegistrationImpl>
    implements _$$RegistrationImplCopyWith<$Res> {
  __$$RegistrationImplCopyWithImpl(
      _$RegistrationImpl _value, $Res Function(_$RegistrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? factionSymbol = null,
    Object? role = null,
  }) {
    return _then(_$RegistrationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      factionSymbol: null == factionSymbol
          ? _value.factionSymbol
          : factionSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationImpl implements _Registration {
  const _$RegistrationImpl(
      {this.name = '', this.factionSymbol = '', this.role = ''});

  factory _$RegistrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String factionSymbol;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'Registration(name: $name, factionSymbol: $factionSymbol, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.factionSymbol, factionSymbol) ||
                other.factionSymbol == factionSymbol) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, factionSymbol, role);

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      __$$RegistrationImplCopyWithImpl<_$RegistrationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationImplToJson(
      this,
    );
  }
}

abstract class _Registration implements Registration {
  const factory _Registration(
      {final String name,
      final String factionSymbol,
      final String role}) = _$RegistrationImpl;

  factory _Registration.fromJson(Map<String, dynamic> json) =
      _$RegistrationImpl.fromJson;

  @override
  String get name;
  @override
  String get factionSymbol;
  @override
  String get role;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
