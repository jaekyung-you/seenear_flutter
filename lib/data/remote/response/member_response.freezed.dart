// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberResponse _$MemberResponseFromJson(Map<String, dynamic> json) {
  return _MemberResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberResponse {
  String? get imageSrc => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberResponseCopyWith<MemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberResponseCopyWith<$Res> {
  factory $MemberResponseCopyWith(
          MemberResponse value, $Res Function(MemberResponse) then) =
      _$MemberResponseCopyWithImpl<$Res, MemberResponse>;
  @useResult
  $Res call({String? imageSrc, String? name, int memberId});
}

/// @nodoc
class _$MemberResponseCopyWithImpl<$Res, $Val extends MemberResponse>
    implements $MemberResponseCopyWith<$Res> {
  _$MemberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageSrc = freezed,
    Object? name = freezed,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      imageSrc: freezed == imageSrc
          ? _value.imageSrc
          : imageSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberResponseImplCopyWith<$Res>
    implements $MemberResponseCopyWith<$Res> {
  factory _$$MemberResponseImplCopyWith(_$MemberResponseImpl value,
          $Res Function(_$MemberResponseImpl) then) =
      __$$MemberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageSrc, String? name, int memberId});
}

/// @nodoc
class __$$MemberResponseImplCopyWithImpl<$Res>
    extends _$MemberResponseCopyWithImpl<$Res, _$MemberResponseImpl>
    implements _$$MemberResponseImplCopyWith<$Res> {
  __$$MemberResponseImplCopyWithImpl(
      _$MemberResponseImpl _value, $Res Function(_$MemberResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageSrc = freezed,
    Object? name = freezed,
    Object? memberId = null,
  }) {
    return _then(_$MemberResponseImpl(
      imageSrc: freezed == imageSrc
          ? _value.imageSrc
          : imageSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberResponseImpl
    with DiagnosticableTreeMixin
    implements _MemberResponse {
  const _$MemberResponseImpl(
      {this.imageSrc, this.name, required this.memberId});

  factory _$MemberResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberResponseImplFromJson(json);

  @override
  final String? imageSrc;
  @override
  final String? name;
  @override
  final int memberId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberResponse(imageSrc: $imageSrc, name: $name, memberId: $memberId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberResponse'))
      ..add(DiagnosticsProperty('imageSrc', imageSrc))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('memberId', memberId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberResponseImpl &&
            (identical(other.imageSrc, imageSrc) ||
                other.imageSrc == imageSrc) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageSrc, name, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberResponseImplCopyWith<_$MemberResponseImpl> get copyWith =>
      __$$MemberResponseImplCopyWithImpl<_$MemberResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberResponseImplToJson(
      this,
    );
  }
}

abstract class _MemberResponse implements MemberResponse {
  const factory _MemberResponse(
      {final String? imageSrc,
      final String? name,
      required final int memberId}) = _$MemberResponseImpl;

  factory _MemberResponse.fromJson(Map<String, dynamic> json) =
      _$MemberResponseImpl.fromJson;

  @override
  String? get imageSrc;
  @override
  String? get name;
  @override
  int get memberId;
  @override
  @JsonKey(ignore: true)
  _$$MemberResponseImplCopyWith<_$MemberResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
