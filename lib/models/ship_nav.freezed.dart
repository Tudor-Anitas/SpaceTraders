// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship_nav.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipNav _$ShipNavFromJson(Map<String, dynamic> json) {
  return _ShipNav.fromJson(json);
}

/// @nodoc
mixin _$ShipNav {
  String get systemSymbol => throw _privateConstructorUsedError;
  String get waypointSymbol => throw _privateConstructorUsedError;
  Route get route => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get flightMode => throw _privateConstructorUsedError;

  /// Serializes this ShipNav to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipNav
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipNavCopyWith<ShipNav> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipNavCopyWith<$Res> {
  factory $ShipNavCopyWith(ShipNav value, $Res Function(ShipNav) then) =
      _$ShipNavCopyWithImpl<$Res, ShipNav>;
  @useResult
  $Res call(
      {String systemSymbol,
      String waypointSymbol,
      Route route,
      String status,
      String flightMode});

  $RouteCopyWith<$Res> get route;
}

/// @nodoc
class _$ShipNavCopyWithImpl<$Res, $Val extends ShipNav>
    implements $ShipNavCopyWith<$Res> {
  _$ShipNavCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipNav
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemSymbol = null,
    Object? waypointSymbol = null,
    Object? route = null,
    Object? status = null,
    Object? flightMode = null,
  }) {
    return _then(_value.copyWith(
      systemSymbol: null == systemSymbol
          ? _value.systemSymbol
          : systemSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      waypointSymbol: null == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      flightMode: null == flightMode
          ? _value.flightMode
          : flightMode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ShipNav
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteCopyWith<$Res> get route {
    return $RouteCopyWith<$Res>(_value.route, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipNavImplCopyWith<$Res> implements $ShipNavCopyWith<$Res> {
  factory _$$ShipNavImplCopyWith(
          _$ShipNavImpl value, $Res Function(_$ShipNavImpl) then) =
      __$$ShipNavImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String systemSymbol,
      String waypointSymbol,
      Route route,
      String status,
      String flightMode});

  @override
  $RouteCopyWith<$Res> get route;
}

/// @nodoc
class __$$ShipNavImplCopyWithImpl<$Res>
    extends _$ShipNavCopyWithImpl<$Res, _$ShipNavImpl>
    implements _$$ShipNavImplCopyWith<$Res> {
  __$$ShipNavImplCopyWithImpl(
      _$ShipNavImpl _value, $Res Function(_$ShipNavImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipNav
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemSymbol = null,
    Object? waypointSymbol = null,
    Object? route = null,
    Object? status = null,
    Object? flightMode = null,
  }) {
    return _then(_$ShipNavImpl(
      systemSymbol: null == systemSymbol
          ? _value.systemSymbol
          : systemSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      waypointSymbol: null == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      flightMode: null == flightMode
          ? _value.flightMode
          : flightMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipNavImpl implements _ShipNav {
  const _$ShipNavImpl(
      {required this.systemSymbol,
      required this.waypointSymbol,
      required this.route,
      required this.status,
      required this.flightMode});

  factory _$ShipNavImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipNavImplFromJson(json);

  @override
  final String systemSymbol;
  @override
  final String waypointSymbol;
  @override
  final Route route;
  @override
  final String status;
  @override
  final String flightMode;

  @override
  String toString() {
    return 'ShipNav(systemSymbol: $systemSymbol, waypointSymbol: $waypointSymbol, route: $route, status: $status, flightMode: $flightMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipNavImpl &&
            (identical(other.systemSymbol, systemSymbol) ||
                other.systemSymbol == systemSymbol) &&
            (identical(other.waypointSymbol, waypointSymbol) ||
                other.waypointSymbol == waypointSymbol) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.flightMode, flightMode) ||
                other.flightMode == flightMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, systemSymbol, waypointSymbol, route, status, flightMode);

  /// Create a copy of ShipNav
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipNavImplCopyWith<_$ShipNavImpl> get copyWith =>
      __$$ShipNavImplCopyWithImpl<_$ShipNavImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipNavImplToJson(
      this,
    );
  }
}

abstract class _ShipNav implements ShipNav {
  const factory _ShipNav(
      {required final String systemSymbol,
      required final String waypointSymbol,
      required final Route route,
      required final String status,
      required final String flightMode}) = _$ShipNavImpl;

  factory _ShipNav.fromJson(Map<String, dynamic> json) = _$ShipNavImpl.fromJson;

  @override
  String get systemSymbol;
  @override
  String get waypointSymbol;
  @override
  Route get route;
  @override
  String get status;
  @override
  String get flightMode;

  /// Create a copy of ShipNav
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipNavImplCopyWith<_$ShipNavImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
