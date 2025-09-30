// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  int get onAccepted => throw _privateConstructorUsedError;
  int get onFulfilled => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call({int onAccepted, int onFulfilled});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onAccepted = null,
    Object? onFulfilled = null,
  }) {
    return _then(_value.copyWith(
      onAccepted: null == onAccepted
          ? _value.onAccepted
          : onAccepted // ignore: cast_nullable_to_non_nullable
              as int,
      onFulfilled: null == onFulfilled
          ? _value.onFulfilled
          : onFulfilled // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int onAccepted, int onFulfilled});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onAccepted = null,
    Object? onFulfilled = null,
  }) {
    return _then(_$PaymentImpl(
      onAccepted: null == onAccepted
          ? _value.onAccepted
          : onAccepted // ignore: cast_nullable_to_non_nullable
              as int,
      onFulfilled: null == onFulfilled
          ? _value.onFulfilled
          : onFulfilled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl({this.onAccepted = 0, this.onFulfilled = 0});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  @JsonKey()
  final int onAccepted;
  @override
  @JsonKey()
  final int onFulfilled;

  @override
  String toString() {
    return 'Payment(onAccepted: $onAccepted, onFulfilled: $onFulfilled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.onAccepted, onAccepted) ||
                other.onAccepted == onAccepted) &&
            (identical(other.onFulfilled, onFulfilled) ||
                other.onFulfilled == onFulfilled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, onAccepted, onFulfilled);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment({final int onAccepted, final int onFulfilled}) =
      _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  int get onAccepted;
  @override
  int get onFulfilled;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
