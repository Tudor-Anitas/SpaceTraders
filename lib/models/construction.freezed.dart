// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'construction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Construction _$ConstructionFromJson(Map<String, dynamic> json) {
  return _Construction.fromJson(json);
}

/// @nodoc
mixin _$Construction {
  bool get isComplete => throw _privateConstructorUsedError;
  List<ConstructionMaterial> get materials =>
      throw _privateConstructorUsedError;

  /// Serializes this Construction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Construction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConstructionCopyWith<Construction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstructionCopyWith<$Res> {
  factory $ConstructionCopyWith(
          Construction value, $Res Function(Construction) then) =
      _$ConstructionCopyWithImpl<$Res, Construction>;
  @useResult
  $Res call({bool isComplete, List<ConstructionMaterial> materials});
}

/// @nodoc
class _$ConstructionCopyWithImpl<$Res, $Val extends Construction>
    implements $ConstructionCopyWith<$Res> {
  _$ConstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Construction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isComplete = null,
    Object? materials = null,
  }) {
    return _then(_value.copyWith(
      isComplete: null == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<ConstructionMaterial>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstructionImplCopyWith<$Res>
    implements $ConstructionCopyWith<$Res> {
  factory _$$ConstructionImplCopyWith(
          _$ConstructionImpl value, $Res Function(_$ConstructionImpl) then) =
      __$$ConstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isComplete, List<ConstructionMaterial> materials});
}

/// @nodoc
class __$$ConstructionImplCopyWithImpl<$Res>
    extends _$ConstructionCopyWithImpl<$Res, _$ConstructionImpl>
    implements _$$ConstructionImplCopyWith<$Res> {
  __$$ConstructionImplCopyWithImpl(
      _$ConstructionImpl _value, $Res Function(_$ConstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Construction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isComplete = null,
    Object? materials = null,
  }) {
    return _then(_$ConstructionImpl(
      isComplete: null == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<ConstructionMaterial>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstructionImpl implements _Construction {
  const _$ConstructionImpl(
      {required this.isComplete,
      final List<ConstructionMaterial> materials = const []})
      : _materials = materials;

  factory _$ConstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstructionImplFromJson(json);

  @override
  final bool isComplete;
  final List<ConstructionMaterial> _materials;
  @override
  @JsonKey()
  List<ConstructionMaterial> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'Construction(isComplete: $isComplete, materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstructionImpl &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isComplete, const DeepCollectionEquality().hash(_materials));

  /// Create a copy of Construction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstructionImplCopyWith<_$ConstructionImpl> get copyWith =>
      __$$ConstructionImplCopyWithImpl<_$ConstructionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstructionImplToJson(
      this,
    );
  }
}

abstract class _Construction implements Construction {
  const factory _Construction(
      {required final bool isComplete,
      final List<ConstructionMaterial> materials}) = _$ConstructionImpl;

  factory _Construction.fromJson(Map<String, dynamic> json) =
      _$ConstructionImpl.fromJson;

  @override
  bool get isComplete;
  @override
  List<ConstructionMaterial> get materials;

  /// Create a copy of Construction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConstructionImplCopyWith<_$ConstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
