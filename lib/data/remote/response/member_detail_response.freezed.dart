// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberDetailResponse _$MemberDetailResponseFromJson(Map<String, dynamic> json) {
  return _MemberDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberDetailResponse {
  int get id => throw _privateConstructorUsedError; // 멤버id
  String get nickName => throw _privateConstructorUsedError; // 닉네임
  String? get profileImageSrc => throw _privateConstructorUsedError;
  String? get loginType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDetailResponseCopyWith<MemberDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailResponseCopyWith<$Res> {
  factory $MemberDetailResponseCopyWith(MemberDetailResponse value,
          $Res Function(MemberDetailResponse) then) =
      _$MemberDetailResponseCopyWithImpl<$Res, MemberDetailResponse>;
  @useResult
  $Res call(
      {int id, String nickName, String? profileImageSrc, String? loginType});
}

/// @nodoc
class _$MemberDetailResponseCopyWithImpl<$Res,
        $Val extends MemberDetailResponse>
    implements $MemberDetailResponseCopyWith<$Res> {
  _$MemberDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
    Object? profileImageSrc = freezed,
    Object? loginType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageSrc: freezed == profileImageSrc
          ? _value.profileImageSrc
          : profileImageSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberDetailResponseImplCopyWith<$Res>
    implements $MemberDetailResponseCopyWith<$Res> {
  factory _$$MemberDetailResponseImplCopyWith(_$MemberDetailResponseImpl value,
          $Res Function(_$MemberDetailResponseImpl) then) =
      __$$MemberDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String nickName, String? profileImageSrc, String? loginType});
}

/// @nodoc
class __$$MemberDetailResponseImplCopyWithImpl<$Res>
    extends _$MemberDetailResponseCopyWithImpl<$Res, _$MemberDetailResponseImpl>
    implements _$$MemberDetailResponseImplCopyWith<$Res> {
  __$$MemberDetailResponseImplCopyWithImpl(_$MemberDetailResponseImpl _value,
      $Res Function(_$MemberDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
    Object? profileImageSrc = freezed,
    Object? loginType = freezed,
  }) {
    return _then(_$MemberDetailResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageSrc: freezed == profileImageSrc
          ? _value.profileImageSrc
          : profileImageSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDetailResponseImpl
    with DiagnosticableTreeMixin
    implements _MemberDetailResponse {
  const _$MemberDetailResponseImpl(
      {required this.id,
      required this.nickName,
      this.profileImageSrc,
      this.loginType});

  factory _$MemberDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDetailResponseImplFromJson(json);

  @override
  final int id;
// 멤버id
  @override
  final String nickName;
// 닉네임
  @override
  final String? profileImageSrc;
  @override
  final String? loginType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberDetailResponse(id: $id, nickName: $nickName, profileImageSrc: $profileImageSrc, loginType: $loginType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberDetailResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nickName', nickName))
      ..add(DiagnosticsProperty('profileImageSrc', profileImageSrc))
      ..add(DiagnosticsProperty('loginType', loginType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageSrc, profileImageSrc) ||
                other.profileImageSrc == profileImageSrc) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickName, profileImageSrc, loginType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailResponseImplCopyWith<_$MemberDetailResponseImpl>
      get copyWith =>
          __$$MemberDetailResponseImplCopyWithImpl<_$MemberDetailResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _MemberDetailResponse implements MemberDetailResponse {
  const factory _MemberDetailResponse(
      {required final int id,
      required final String nickName,
      final String? profileImageSrc,
      final String? loginType}) = _$MemberDetailResponseImpl;

  factory _MemberDetailResponse.fromJson(Map<String, dynamic> json) =
      _$MemberDetailResponseImpl.fromJson;

  @override
  int get id;
  @override // 멤버id
  String get nickName;
  @override // 닉네임
  String? get profileImageSrc;
  @override
  String? get loginType;
  @override
  @JsonKey(ignore: true)
  _$$MemberDetailResponseImplCopyWith<_$MemberDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
