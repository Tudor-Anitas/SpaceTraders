// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Terms _$TermsFromJson(Map<String, dynamic> json) {
  return _Terms.fromJson(json);
}

/// @nodoc
mixin _$Terms {
  DateTime get deadline => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;
  List<ContractDeliverGood> get deliver => throw _privateConstructorUsedError;

  /// Serializes this Terms to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermsCopyWith<Terms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsCopyWith<$Res> {
  factory $TermsCopyWith(Terms value, $Res Function(Terms) then) =
      _$TermsCopyWithImpl<$Res, Terms>;
  @useResult
  $Res call(
      {DateTime deadline, Payment payment, List<ContractDeliverGood> deliver});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class _$TermsCopyWithImpl<$Res, $Val extends Terms>
    implements $TermsCopyWith<$Res> {
  _$TermsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadline = null,
    Object? payment = null,
    Object? deliver = null,
  }) {
    return _then(_value.copyWith(
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      deliver: null == deliver
          ? _value.deliver
          : deliver // ignore: cast_nullable_to_non_nullable
              as List<ContractDeliverGood>,
    ) as $Val);
  }

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermsImplCopyWith<$Res> implements $TermsCopyWith<$Res> {
  factory _$$TermsImplCopyWith(
          _$TermsImpl value, $Res Function(_$TermsImpl) then) =
      __$$TermsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime deadline, Payment payment, List<ContractDeliverGood> deliver});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$TermsImplCopyWithImpl<$Res>
    extends _$TermsCopyWithImpl<$Res, _$TermsImpl>
    implements _$$TermsImplCopyWith<$Res> {
  __$$TermsImplCopyWithImpl(
      _$TermsImpl _value, $Res Function(_$TermsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadline = null,
    Object? payment = null,
    Object? deliver = null,
  }) {
    return _then(_$TermsImpl(
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      deliver: null == deliver
          ? _value._deliver
          : deliver // ignore: cast_nullable_to_non_nullable
              as List<ContractDeliverGood>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsImpl implements _Terms {
  const _$TermsImpl(
      {required this.deadline,
      this.payment = const Payment(),
      final List<ContractDeliverGood> deliver = const []})
      : _deliver = deliver;

  factory _$TermsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsImplFromJson(json);

  @override
  final DateTime deadline;
  @override
  @JsonKey()
  final Payment payment;
  final List<ContractDeliverGood> _deliver;
  @override
  @JsonKey()
  List<ContractDeliverGood> get deliver {
    if (_deliver is EqualUnmodifiableListView) return _deliver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliver);
  }

  @override
  String toString() {
    return 'Terms(deadline: $deadline, payment: $payment, deliver: $deliver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsImpl &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality().equals(other._deliver, _deliver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deadline, payment,
      const DeepCollectionEquality().hash(_deliver));

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsImplCopyWith<_$TermsImpl> get copyWith =>
      __$$TermsImplCopyWithImpl<_$TermsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsImplToJson(
      this,
    );
  }
}

abstract class _Terms implements Terms {
  const factory _Terms(
      {required final DateTime deadline,
      final Payment payment,
      final List<ContractDeliverGood> deliver}) = _$TermsImpl;

  factory _Terms.fromJson(Map<String, dynamic> json) = _$TermsImpl.fromJson;

  @override
  DateTime get deadline;
  @override
  Payment get payment;
  @override
  List<ContractDeliverGood> get deliver;

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsImplCopyWith<_$TermsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
