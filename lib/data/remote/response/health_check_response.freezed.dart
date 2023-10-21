// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_check_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthCheckResponse _$HealthCheckResponseFromJson(Map<String, dynamic> json) {
  return _HealthCheckResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthCheckResponse {
  String get accessToken => throw _privateConstructorUsedError; // 발급받은 토큰
  bool get member => throw _privateConstructorUsedError;
  MemberResponse? get memberView => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthCheckResponseCopyWith<HealthCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthCheckResponseCopyWith<$Res> {
  factory $HealthCheckResponseCopyWith(
          HealthCheckResponse value, $Res Function(HealthCheckResponse) then) =
      _$HealthCheckResponseCopyWithImpl<$Res, HealthCheckResponse>;
  @useResult
  $Res call({String accessToken, bool member, MemberResponse? memberView});
}

/// @nodoc
class _$HealthCheckResponseCopyWithImpl<$Res, $Val extends HealthCheckResponse>
    implements $HealthCheckResponseCopyWith<$Res> {
  _$HealthCheckResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? member = null,
    Object? memberView = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as bool,
      memberView: freezed == memberView
          ? _value.memberView
          : memberView // ignore: cast_nullable_to_non_nullable
              as MemberResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthCheckResponseImplCopyWith<$Res>
    implements $HealthCheckResponseCopyWith<$Res> {
  factory _$$HealthCheckResponseImplCopyWith(_$HealthCheckResponseImpl value,
          $Res Function(_$HealthCheckResponseImpl) then) =
      __$$HealthCheckResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, bool member, MemberResponse? memberView});
}

/// @nodoc
class __$$HealthCheckResponseImplCopyWithImpl<$Res>
    extends _$HealthCheckResponseCopyWithImpl<$Res, _$HealthCheckResponseImpl>
    implements _$$HealthCheckResponseImplCopyWith<$Res> {
  __$$HealthCheckResponseImplCopyWithImpl(_$HealthCheckResponseImpl _value,
      $Res Function(_$HealthCheckResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? member = null,
    Object? memberView = freezed,
  }) {
    return _then(_$HealthCheckResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as bool,
      memberView: freezed == memberView
          ? _value.memberView
          : memberView // ignore: cast_nullable_to_non_nullable
              as MemberResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthCheckResponseImpl
    with DiagnosticableTreeMixin
    implements _HealthCheckResponse {
  const _$HealthCheckResponseImpl(
      {required this.accessToken, required this.member, this.memberView});

  factory _$HealthCheckResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthCheckResponseImplFromJson(json);

  @override
  final String accessToken;
// 발급받은 토큰
  @override
  final bool member;
  @override
  final MemberResponse? memberView;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HealthCheckResponse(accessToken: $accessToken, member: $member, memberView: $memberView)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HealthCheckResponse'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('member', member))
      ..add(DiagnosticsProperty('memberView', memberView));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthCheckResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.memberView, memberView) ||
                other.memberView == memberView));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, member, memberView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthCheckResponseImplCopyWith<_$HealthCheckResponseImpl> get copyWith =>
      __$$HealthCheckResponseImplCopyWithImpl<_$HealthCheckResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthCheckResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthCheckResponse implements HealthCheckResponse {
  const factory _HealthCheckResponse(
      {required final String accessToken,
      required final bool member,
      final MemberResponse? memberView}) = _$HealthCheckResponseImpl;

  factory _HealthCheckResponse.fromJson(Map<String, dynamic> json) =
      _$HealthCheckResponseImpl.fromJson;

  @override
  String get accessToken;
  @override // 발급받은 토큰
  bool get member;
  @override
  MemberResponse? get memberView;
  @override
  @JsonKey(ignore: true)
  _$$HealthCheckResponseImplCopyWith<_$HealthCheckResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
