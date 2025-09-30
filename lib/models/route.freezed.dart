// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  Origin get origin => throw _privateConstructorUsedError;
  Destination get destination => throw _privateConstructorUsedError;
  String get departureTime => throw _privateConstructorUsedError;
  String get arrival => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {Origin origin,
      Destination destination,
      String departureTime,
      String arrival});

  $OriginCopyWith<$Res> get origin;
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? departureTime = null,
    Object? arrival = null,
  }) {
    return _then(_value.copyWith(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OriginCopyWith<$Res> get origin {
    return $OriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
          _$RouteImpl value, $Res Function(_$RouteImpl) then) =
      __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Origin origin,
      Destination destination,
      String departureTime,
      String arrival});

  @override
  $OriginCopyWith<$Res> get origin;
  @override
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
      _$RouteImpl _value, $Res Function(_$RouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? departureTime = null,
    Object? arrival = null,
  }) {
    return _then(_$RouteImpl(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl(
      {required this.origin,
      required this.destination,
      required this.departureTime,
      required this.arrival});

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final Origin origin;
  @override
  final Destination destination;
  @override
  final String departureTime;
  @override
  final String arrival;

  @override
  String toString() {
    return 'Route(origin: $origin, destination: $destination, departureTime: $departureTime, arrival: $arrival)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrival, arrival) || other.arrival == arrival));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, origin, destination, departureTime, arrival);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  const factory _Route(
      {required final Origin origin,
      required final Destination destination,
      required final String departureTime,
      required final String arrival}) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  Origin get origin;
  @override
  Destination get destination;
  @override
  String get departureTime;
  @override
  String get arrival;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
