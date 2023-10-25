// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
  int get id => throw _privateConstructorUsedError;
  String get addressDetailA => throw _privateConstructorUsedError;
  String get addressDetailB => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
  @useResult
  $Res call({int id, String addressDetailA, String addressDetailB});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res, $Val extends AddressResponse>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addressDetailA = null,
    Object? addressDetailB = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      addressDetailA: null == addressDetailA
          ? _value.addressDetailA
          : addressDetailA // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailB: null == addressDetailB
          ? _value.addressDetailB
          : addressDetailB // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressResponseImplCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$AddressResponseImplCopyWith(_$AddressResponseImpl value,
          $Res Function(_$AddressResponseImpl) then) =
      __$$AddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String addressDetailA, String addressDetailB});
}

/// @nodoc
class __$$AddressResponseImplCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$AddressResponseImpl>
    implements _$$AddressResponseImplCopyWith<$Res> {
  __$$AddressResponseImplCopyWithImpl(
      _$AddressResponseImpl _value, $Res Function(_$AddressResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addressDetailA = null,
    Object? addressDetailB = null,
  }) {
    return _then(_$AddressResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      addressDetailA: null == addressDetailA
          ? _value.addressDetailA
          : addressDetailA // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailB: null == addressDetailB
          ? _value.addressDetailB
          : addressDetailB // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressResponseImpl
    with DiagnosticableTreeMixin
    implements _AddressResponse {
  const _$AddressResponseImpl(
      {required this.id,
      required this.addressDetailA,
      required this.addressDetailB});

  factory _$AddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String addressDetailA;
  @override
  final String addressDetailB;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressResponse(id: $id, addressDetailA: $addressDetailA, addressDetailB: $addressDetailB)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('addressDetailA', addressDetailA))
      ..add(DiagnosticsProperty('addressDetailB', addressDetailB));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addressDetailA, addressDetailA) ||
                other.addressDetailA == addressDetailA) &&
            (identical(other.addressDetailB, addressDetailB) ||
                other.addressDetailB == addressDetailB));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, addressDetailA, addressDetailB);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressResponseImplCopyWith<_$AddressResponseImpl> get copyWith =>
      __$$AddressResponseImplCopyWithImpl<_$AddressResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressResponseImplToJson(
      this,
    );
  }
}

abstract class _AddressResponse implements AddressResponse {
  const factory _AddressResponse(
      {required final int id,
      required final String addressDetailA,
      required final String addressDetailB}) = _$AddressResponseImpl;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$AddressResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get addressDetailA;
  @override
  String get addressDetailB;
  @override
  @JsonKey(ignore: true)
  _$$AddressResponseImplCopyWith<_$AddressResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
