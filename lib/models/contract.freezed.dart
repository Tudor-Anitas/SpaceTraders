// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return _Contract.fromJson(json);
}

/// @nodoc
mixin _$Contract {
  String get id => throw _privateConstructorUsedError;
  String get factionSymbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Terms get terms => throw _privateConstructorUsedError;
  bool get accepted => throw _privateConstructorUsedError;
  bool get fulfilled => throw _privateConstructorUsedError;
  DateTime get expiration => throw _privateConstructorUsedError;
  DateTime get deadlineToAccept => throw _privateConstructorUsedError;

  /// Serializes this Contract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractCopyWith<Contract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCopyWith<$Res> {
  factory $ContractCopyWith(Contract value, $Res Function(Contract) then) =
      _$ContractCopyWithImpl<$Res, Contract>;
  @useResult
  $Res call(
      {String id,
      String factionSymbol,
      String type,
      Terms terms,
      bool accepted,
      bool fulfilled,
      DateTime expiration,
      DateTime deadlineToAccept});

  $TermsCopyWith<$Res> get terms;
}

/// @nodoc
class _$ContractCopyWithImpl<$Res, $Val extends Contract>
    implements $ContractCopyWith<$Res> {
  _$ContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? factionSymbol = null,
    Object? type = null,
    Object? terms = null,
    Object? accepted = null,
    Object? fulfilled = null,
    Object? expiration = null,
    Object? deadlineToAccept = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      factionSymbol: null == factionSymbol
          ? _value.factionSymbol
          : factionSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as Terms,
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfilled: null == fulfilled
          ? _value.fulfilled
          : fulfilled // ignore: cast_nullable_to_non_nullable
              as bool,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadlineToAccept: null == deadlineToAccept
          ? _value.deadlineToAccept
          : deadlineToAccept // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TermsCopyWith<$Res> get terms {
    return $TermsCopyWith<$Res>(_value.terms, (value) {
      return _then(_value.copyWith(terms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractImplCopyWith<$Res>
    implements $ContractCopyWith<$Res> {
  factory _$$ContractImplCopyWith(
          _$ContractImpl value, $Res Function(_$ContractImpl) then) =
      __$$ContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String factionSymbol,
      String type,
      Terms terms,
      bool accepted,
      bool fulfilled,
      DateTime expiration,
      DateTime deadlineToAccept});

  @override
  $TermsCopyWith<$Res> get terms;
}

/// @nodoc
class __$$ContractImplCopyWithImpl<$Res>
    extends _$ContractCopyWithImpl<$Res, _$ContractImpl>
    implements _$$ContractImplCopyWith<$Res> {
  __$$ContractImplCopyWithImpl(
      _$ContractImpl _value, $Res Function(_$ContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? factionSymbol = null,
    Object? type = null,
    Object? terms = null,
    Object? accepted = null,
    Object? fulfilled = null,
    Object? expiration = null,
    Object? deadlineToAccept = null,
  }) {
    return _then(_$ContractImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      factionSymbol: null == factionSymbol
          ? _value.factionSymbol
          : factionSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as Terms,
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfilled: null == fulfilled
          ? _value.fulfilled
          : fulfilled // ignore: cast_nullable_to_non_nullable
              as bool,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadlineToAccept: null == deadlineToAccept
          ? _value.deadlineToAccept
          : deadlineToAccept // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractImpl implements _Contract {
  const _$ContractImpl(
      {this.id = '',
      this.factionSymbol = '',
      this.type = '',
      required this.terms,
      this.accepted = false,
      this.fulfilled = false,
      required this.expiration,
      required this.deadlineToAccept});

  factory _$ContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String factionSymbol;
  @override
  @JsonKey()
  final String type;
  @override
  final Terms terms;
  @override
  @JsonKey()
  final bool accepted;
  @override
  @JsonKey()
  final bool fulfilled;
  @override
  final DateTime expiration;
  @override
  final DateTime deadlineToAccept;

  @override
  String toString() {
    return 'Contract(id: $id, factionSymbol: $factionSymbol, type: $type, terms: $terms, accepted: $accepted, fulfilled: $fulfilled, expiration: $expiration, deadlineToAccept: $deadlineToAccept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.factionSymbol, factionSymbol) ||
                other.factionSymbol == factionSymbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.fulfilled, fulfilled) ||
                other.fulfilled == fulfilled) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.deadlineToAccept, deadlineToAccept) ||
                other.deadlineToAccept == deadlineToAccept));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, factionSymbol, type, terms,
      accepted, fulfilled, expiration, deadlineToAccept);

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractImplCopyWith<_$ContractImpl> get copyWith =>
      __$$ContractImplCopyWithImpl<_$ContractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractImplToJson(
      this,
    );
  }
}

abstract class _Contract implements Contract {
  const factory _Contract(
      {final String id,
      final String factionSymbol,
      final String type,
      required final Terms terms,
      final bool accepted,
      final bool fulfilled,
      required final DateTime expiration,
      required final DateTime deadlineToAccept}) = _$ContractImpl;

  factory _Contract.fromJson(Map<String, dynamic> json) =
      _$ContractImpl.fromJson;

  @override
  String get id;
  @override
  String get factionSymbol;
  @override
  String get type;
  @override
  Terms get terms;
  @override
  bool get accepted;
  @override
  bool get fulfilled;
  @override
  DateTime get expiration;
  @override
  DateTime get deadlineToAccept;

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractImplCopyWith<_$ContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
