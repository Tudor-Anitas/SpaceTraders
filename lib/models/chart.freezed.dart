// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chart _$ChartFromJson(Map<String, dynamic> json) {
  return _Chart.fromJson(json);
}

/// @nodoc
mixin _$Chart {
  String? get waypointSymbol => throw _privateConstructorUsedError;
  String? get submittedBy => throw _privateConstructorUsedError;
  String? get submittedOn => throw _privateConstructorUsedError;

  /// Serializes this Chart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartCopyWith<Chart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartCopyWith<$Res> {
  factory $ChartCopyWith(Chart value, $Res Function(Chart) then) =
      _$ChartCopyWithImpl<$Res, Chart>;
  @useResult
  $Res call({String? waypointSymbol, String? submittedBy, String? submittedOn});
}

/// @nodoc
class _$ChartCopyWithImpl<$Res, $Val extends Chart>
    implements $ChartCopyWith<$Res> {
  _$ChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypointSymbol = freezed,
    Object? submittedBy = freezed,
    Object? submittedOn = freezed,
  }) {
    return _then(_value.copyWith(
      waypointSymbol: freezed == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedOn: freezed == submittedOn
          ? _value.submittedOn
          : submittedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartImplCopyWith<$Res> implements $ChartCopyWith<$Res> {
  factory _$$ChartImplCopyWith(
          _$ChartImpl value, $Res Function(_$ChartImpl) then) =
      __$$ChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? waypointSymbol, String? submittedBy, String? submittedOn});
}

/// @nodoc
class __$$ChartImplCopyWithImpl<$Res>
    extends _$ChartCopyWithImpl<$Res, _$ChartImpl>
    implements _$$ChartImplCopyWith<$Res> {
  __$$ChartImplCopyWithImpl(
      _$ChartImpl _value, $Res Function(_$ChartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypointSymbol = freezed,
    Object? submittedBy = freezed,
    Object? submittedOn = freezed,
  }) {
    return _then(_$ChartImpl(
      waypointSymbol: freezed == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedOn: freezed == submittedOn
          ? _value.submittedOn
          : submittedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChartImpl implements _Chart {
  const _$ChartImpl({this.waypointSymbol, this.submittedBy, this.submittedOn});

  factory _$ChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartImplFromJson(json);

  @override
  final String? waypointSymbol;
  @override
  final String? submittedBy;
  @override
  final String? submittedOn;

  @override
  String toString() {
    return 'Chart(waypointSymbol: $waypointSymbol, submittedBy: $submittedBy, submittedOn: $submittedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartImpl &&
            (identical(other.waypointSymbol, waypointSymbol) ||
                other.waypointSymbol == waypointSymbol) &&
            (identical(other.submittedBy, submittedBy) ||
                other.submittedBy == submittedBy) &&
            (identical(other.submittedOn, submittedOn) ||
                other.submittedOn == submittedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, waypointSymbol, submittedBy, submittedOn);

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartImplCopyWith<_$ChartImpl> get copyWith =>
      __$$ChartImplCopyWithImpl<_$ChartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartImplToJson(
      this,
    );
  }
}

abstract class _Chart implements Chart {
  const factory _Chart(
      {final String? waypointSymbol,
      final String? submittedBy,
      final String? submittedOn}) = _$ChartImpl;

  factory _Chart.fromJson(Map<String, dynamic> json) = _$ChartImpl.fromJson;

  @override
  String? get waypointSymbol;
  @override
  String? get submittedBy;
  @override
  String? get submittedOn;

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartImplCopyWith<_$ChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
