// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_deposit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveyDeposit _$SurveyDepositFromJson(Map<String, dynamic> json) {
  return _SurveyDeposit.fromJson(json);
}

/// @nodoc
mixin _$SurveyDeposit {
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this SurveyDeposit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurveyDeposit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyDepositCopyWith<SurveyDeposit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDepositCopyWith<$Res> {
  factory $SurveyDepositCopyWith(
          SurveyDeposit value, $Res Function(SurveyDeposit) then) =
      _$SurveyDepositCopyWithImpl<$Res, SurveyDeposit>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class _$SurveyDepositCopyWithImpl<$Res, $Val extends SurveyDeposit>
    implements $SurveyDepositCopyWith<$Res> {
  _$SurveyDepositCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyDeposit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyDepositImplCopyWith<$Res>
    implements $SurveyDepositCopyWith<$Res> {
  factory _$$SurveyDepositImplCopyWith(
          _$SurveyDepositImpl value, $Res Function(_$SurveyDepositImpl) then) =
      __$$SurveyDepositImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$SurveyDepositImplCopyWithImpl<$Res>
    extends _$SurveyDepositCopyWithImpl<$Res, _$SurveyDepositImpl>
    implements _$$SurveyDepositImplCopyWith<$Res> {
  __$$SurveyDepositImplCopyWithImpl(
      _$SurveyDepositImpl _value, $Res Function(_$SurveyDepositImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveyDeposit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$SurveyDepositImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyDepositImpl implements _SurveyDeposit {
  const _$SurveyDepositImpl({this.symbol = ''});

  factory _$SurveyDepositImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyDepositImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;

  @override
  String toString() {
    return 'SurveyDeposit(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyDepositImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  /// Create a copy of SurveyDeposit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyDepositImplCopyWith<_$SurveyDepositImpl> get copyWith =>
      __$$SurveyDepositImplCopyWithImpl<_$SurveyDepositImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyDepositImplToJson(
      this,
    );
  }
}

abstract class _SurveyDeposit implements SurveyDeposit {
  const factory _SurveyDeposit({final String symbol}) = _$SurveyDepositImpl;

  factory _SurveyDeposit.fromJson(Map<String, dynamic> json) =
      _$SurveyDepositImpl.fromJson;

  @override
  String get symbol;

  /// Create a copy of SurveyDeposit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyDepositImplCopyWith<_$SurveyDepositImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
