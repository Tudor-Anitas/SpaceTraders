// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Frame _$FrameFromJson(Map<String, dynamic> json) {
  return _Frame.fromJson(json);
}

/// @nodoc
mixin _$Frame {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get condition => throw _privateConstructorUsedError;
  double get integrity => throw _privateConstructorUsedError;
  int get moduleSlots => throw _privateConstructorUsedError;
  int get mountingPoints => throw _privateConstructorUsedError;
  int get fuelCapacity => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  /// Serializes this Frame to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Frame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FrameCopyWith<Frame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameCopyWith<$Res> {
  factory $FrameCopyWith(Frame value, $Res Function(Frame) then) =
      _$FrameCopyWithImpl<$Res, Frame>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      double condition,
      double integrity,
      int moduleSlots,
      int mountingPoints,
      int fuelCapacity,
      Requirements requirements});

  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$FrameCopyWithImpl<$Res, $Val extends Frame>
    implements $FrameCopyWith<$Res> {
  _$FrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Frame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? condition = null,
    Object? integrity = null,
    Object? moduleSlots = null,
    Object? mountingPoints = null,
    Object? fuelCapacity = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as double,
      integrity: null == integrity
          ? _value.integrity
          : integrity // ignore: cast_nullable_to_non_nullable
              as double,
      moduleSlots: null == moduleSlots
          ? _value.moduleSlots
          : moduleSlots // ignore: cast_nullable_to_non_nullable
              as int,
      mountingPoints: null == mountingPoints
          ? _value.mountingPoints
          : mountingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      fuelCapacity: null == fuelCapacity
          ? _value.fuelCapacity
          : fuelCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  /// Create a copy of Frame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequirementsCopyWith<$Res> get requirements {
    return $RequirementsCopyWith<$Res>(_value.requirements, (value) {
      return _then(_value.copyWith(requirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FrameImplCopyWith<$Res> implements $FrameCopyWith<$Res> {
  factory _$$FrameImplCopyWith(
          _$FrameImpl value, $Res Function(_$FrameImpl) then) =
      __$$FrameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      double condition,
      double integrity,
      int moduleSlots,
      int mountingPoints,
      int fuelCapacity,
      Requirements requirements});

  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$FrameImplCopyWithImpl<$Res>
    extends _$FrameCopyWithImpl<$Res, _$FrameImpl>
    implements _$$FrameImplCopyWith<$Res> {
  __$$FrameImplCopyWithImpl(
      _$FrameImpl _value, $Res Function(_$FrameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Frame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? condition = null,
    Object? integrity = null,
    Object? moduleSlots = null,
    Object? mountingPoints = null,
    Object? fuelCapacity = null,
    Object? requirements = null,
  }) {
    return _then(_$FrameImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as double,
      integrity: null == integrity
          ? _value.integrity
          : integrity // ignore: cast_nullable_to_non_nullable
              as double,
      moduleSlots: null == moduleSlots
          ? _value.moduleSlots
          : moduleSlots // ignore: cast_nullable_to_non_nullable
              as int,
      mountingPoints: null == mountingPoints
          ? _value.mountingPoints
          : mountingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      fuelCapacity: null == fuelCapacity
          ? _value.fuelCapacity
          : fuelCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FrameImpl implements _Frame {
  const _$FrameImpl(
      {this.symbol = '',
      this.name = '',
      this.description = '',
      this.condition = 0.0,
      this.integrity = 0.0,
      this.moduleSlots = 0,
      this.mountingPoints = 0,
      this.fuelCapacity = 0,
      this.requirements = const Requirements()});

  factory _$FrameImpl.fromJson(Map<String, dynamic> json) =>
      _$$FrameImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double condition;
  @override
  @JsonKey()
  final double integrity;
  @override
  @JsonKey()
  final int moduleSlots;
  @override
  @JsonKey()
  final int mountingPoints;
  @override
  @JsonKey()
  final int fuelCapacity;
  @override
  @JsonKey()
  final Requirements requirements;

  @override
  String toString() {
    return 'Frame(symbol: $symbol, name: $name, description: $description, condition: $condition, integrity: $integrity, moduleSlots: $moduleSlots, mountingPoints: $mountingPoints, fuelCapacity: $fuelCapacity, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.integrity, integrity) ||
                other.integrity == integrity) &&
            (identical(other.moduleSlots, moduleSlots) ||
                other.moduleSlots == moduleSlots) &&
            (identical(other.mountingPoints, mountingPoints) ||
                other.mountingPoints == mountingPoints) &&
            (identical(other.fuelCapacity, fuelCapacity) ||
                other.fuelCapacity == fuelCapacity) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      name,
      description,
      condition,
      integrity,
      moduleSlots,
      mountingPoints,
      fuelCapacity,
      requirements);

  /// Create a copy of Frame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameImplCopyWith<_$FrameImpl> get copyWith =>
      __$$FrameImplCopyWithImpl<_$FrameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FrameImplToJson(
      this,
    );
  }
}

abstract class _Frame implements Frame {
  const factory _Frame(
      {final String symbol,
      final String name,
      final String description,
      final double condition,
      final double integrity,
      final int moduleSlots,
      final int mountingPoints,
      final int fuelCapacity,
      final Requirements requirements}) = _$FrameImpl;

  factory _Frame.fromJson(Map<String, dynamic> json) = _$FrameImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;
  @override
  double get condition;
  @override
  double get integrity;
  @override
  int get moduleSlots;
  @override
  int get mountingPoints;
  @override
  int get fuelCapacity;
  @override
  Requirements get requirements;

  /// Create a copy of Frame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FrameImplCopyWith<_$FrameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
