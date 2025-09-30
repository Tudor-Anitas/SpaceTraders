// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Consumed _$ConsumedFromJson(Map<String, dynamic> json) {
  return _Consumed.fromJson(json);
}

/// @nodoc
mixin _$Consumed {
  int get amount => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this Consumed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Consumed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsumedCopyWith<Consumed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumedCopyWith<$Res> {
  factory $ConsumedCopyWith(Consumed value, $Res Function(Consumed) then) =
      _$ConsumedCopyWithImpl<$Res, Consumed>;
  @useResult
  $Res call({int amount, String timestamp});
}

/// @nodoc
class _$ConsumedCopyWithImpl<$Res, $Val extends Consumed>
    implements $ConsumedCopyWith<$Res> {
  _$ConsumedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Consumed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsumedImplCopyWith<$Res>
    implements $ConsumedCopyWith<$Res> {
  factory _$$ConsumedImplCopyWith(
          _$ConsumedImpl value, $Res Function(_$ConsumedImpl) then) =
      __$$ConsumedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String timestamp});
}

/// @nodoc
class __$$ConsumedImplCopyWithImpl<$Res>
    extends _$ConsumedCopyWithImpl<$Res, _$ConsumedImpl>
    implements _$$ConsumedImplCopyWith<$Res> {
  __$$ConsumedImplCopyWithImpl(
      _$ConsumedImpl _value, $Res Function(_$ConsumedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Consumed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? timestamp = null,
  }) {
    return _then(_$ConsumedImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumedImpl implements _Consumed {
  const _$ConsumedImpl({this.amount = 0, this.timestamp = ''});

  factory _$ConsumedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsumedImplFromJson(json);

  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String timestamp;

  @override
  String toString() {
    return 'Consumed(amount: $amount, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumedImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, timestamp);

  /// Create a copy of Consumed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumedImplCopyWith<_$ConsumedImpl> get copyWith =>
      __$$ConsumedImplCopyWithImpl<_$ConsumedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumedImplToJson(
      this,
    );
  }
}

abstract class _Consumed implements Consumed {
  const factory _Consumed({final int amount, final String timestamp}) =
      _$ConsumedImpl;

  factory _Consumed.fromJson(Map<String, dynamic> json) =
      _$ConsumedImpl.fromJson;

  @override
  int get amount;
  @override
  String get timestamp;

  /// Create a copy of Consumed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsumedImplCopyWith<_$ConsumedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
