// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return _Survey.fromJson(json);
}

/// @nodoc
mixin _$Survey {
  String get signature => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  List<SurveyDeposit> get deposits => throw _privateConstructorUsedError;
  String get expiration => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  /// Serializes this Survey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res, Survey>;
  @useResult
  $Res call(
      {String signature,
      String symbol,
      List<SurveyDeposit> deposits,
      String expiration,
      String size});
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res, $Val extends Survey>
    implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? symbol = null,
    Object? deposits = null,
    Object? expiration = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      deposits: null == deposits
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<SurveyDeposit>,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyImplCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$SurveyImplCopyWith(
          _$SurveyImpl value, $Res Function(_$SurveyImpl) then) =
      __$$SurveyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signature,
      String symbol,
      List<SurveyDeposit> deposits,
      String expiration,
      String size});
}

/// @nodoc
class __$$SurveyImplCopyWithImpl<$Res>
    extends _$SurveyCopyWithImpl<$Res, _$SurveyImpl>
    implements _$$SurveyImplCopyWith<$Res> {
  __$$SurveyImplCopyWithImpl(
      _$SurveyImpl _value, $Res Function(_$SurveyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? symbol = null,
    Object? deposits = null,
    Object? expiration = null,
    Object? size = null,
  }) {
    return _then(_$SurveyImpl(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      deposits: null == deposits
          ? _value._deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<SurveyDeposit>,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyImpl implements _Survey {
  const _$SurveyImpl(
      {this.signature = '',
      this.symbol = '',
      final List<SurveyDeposit> deposits = const [],
      this.expiration = '',
      this.size = ''})
      : _deposits = deposits;

  factory _$SurveyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyImplFromJson(json);

  @override
  @JsonKey()
  final String signature;
  @override
  @JsonKey()
  final String symbol;
  final List<SurveyDeposit> _deposits;
  @override
  @JsonKey()
  List<SurveyDeposit> get deposits {
    if (_deposits is EqualUnmodifiableListView) return _deposits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deposits);
  }

  @override
  @JsonKey()
  final String expiration;
  @override
  @JsonKey()
  final String size;

  @override
  String toString() {
    return 'Survey(signature: $signature, symbol: $symbol, deposits: $deposits, expiration: $expiration, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyImpl &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality().equals(other._deposits, _deposits) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, signature, symbol,
      const DeepCollectionEquality().hash(_deposits), expiration, size);

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      __$$SurveyImplCopyWithImpl<_$SurveyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyImplToJson(
      this,
    );
  }
}

abstract class _Survey implements Survey {
  const factory _Survey(
      {final String signature,
      final String symbol,
      final List<SurveyDeposit> deposits,
      final String expiration,
      final String size}) = _$SurveyImpl;

  factory _Survey.fromJson(Map<String, dynamic> json) = _$SurveyImpl.fromJson;

  @override
  String get signature;
  @override
  String get symbol;
  @override
  List<SurveyDeposit> get deposits;
  @override
  String get expiration;
  @override
  String get size;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
