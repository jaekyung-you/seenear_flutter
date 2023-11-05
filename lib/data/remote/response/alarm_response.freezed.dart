// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlarmResponse _$AlarmResponseFromJson(Map<String, dynamic> json) {
  return _AlarmResponse.fromJson(json);
}

/// @nodoc
mixin _$AlarmResponse {
  bool get appUpdateNotificationEnabled => throw _privateConstructorUsedError;
  bool get marketingTermsAgreed => throw _privateConstructorUsedError;
  bool get reviewCommentNotificationEnabled =>
      throw _privateConstructorUsedError;
  bool get serviceNoticeNotificationEnabled =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmResponseCopyWith<AlarmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmResponseCopyWith<$Res> {
  factory $AlarmResponseCopyWith(
          AlarmResponse value, $Res Function(AlarmResponse) then) =
      _$AlarmResponseCopyWithImpl<$Res, AlarmResponse>;
  @useResult
  $Res call(
      {bool appUpdateNotificationEnabled,
      bool marketingTermsAgreed,
      bool reviewCommentNotificationEnabled,
      bool serviceNoticeNotificationEnabled});
}

/// @nodoc
class _$AlarmResponseCopyWithImpl<$Res, $Val extends AlarmResponse>
    implements $AlarmResponseCopyWith<$Res> {
  _$AlarmResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUpdateNotificationEnabled = null,
    Object? marketingTermsAgreed = null,
    Object? reviewCommentNotificationEnabled = null,
    Object? serviceNoticeNotificationEnabled = null,
  }) {
    return _then(_value.copyWith(
      appUpdateNotificationEnabled: null == appUpdateNotificationEnabled
          ? _value.appUpdateNotificationEnabled
          : appUpdateNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingTermsAgreed: null == marketingTermsAgreed
          ? _value.marketingTermsAgreed
          : marketingTermsAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCommentNotificationEnabled: null == reviewCommentNotificationEnabled
          ? _value.reviewCommentNotificationEnabled
          : reviewCommentNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceNoticeNotificationEnabled: null == serviceNoticeNotificationEnabled
          ? _value.serviceNoticeNotificationEnabled
          : serviceNoticeNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmResponseImplCopyWith<$Res>
    implements $AlarmResponseCopyWith<$Res> {
  factory _$$AlarmResponseImplCopyWith(
          _$AlarmResponseImpl value, $Res Function(_$AlarmResponseImpl) then) =
      __$$AlarmResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool appUpdateNotificationEnabled,
      bool marketingTermsAgreed,
      bool reviewCommentNotificationEnabled,
      bool serviceNoticeNotificationEnabled});
}

/// @nodoc
class __$$AlarmResponseImplCopyWithImpl<$Res>
    extends _$AlarmResponseCopyWithImpl<$Res, _$AlarmResponseImpl>
    implements _$$AlarmResponseImplCopyWith<$Res> {
  __$$AlarmResponseImplCopyWithImpl(
      _$AlarmResponseImpl _value, $Res Function(_$AlarmResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUpdateNotificationEnabled = null,
    Object? marketingTermsAgreed = null,
    Object? reviewCommentNotificationEnabled = null,
    Object? serviceNoticeNotificationEnabled = null,
  }) {
    return _then(_$AlarmResponseImpl(
      appUpdateNotificationEnabled: null == appUpdateNotificationEnabled
          ? _value.appUpdateNotificationEnabled
          : appUpdateNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingTermsAgreed: null == marketingTermsAgreed
          ? _value.marketingTermsAgreed
          : marketingTermsAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCommentNotificationEnabled: null == reviewCommentNotificationEnabled
          ? _value.reviewCommentNotificationEnabled
          : reviewCommentNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceNoticeNotificationEnabled: null == serviceNoticeNotificationEnabled
          ? _value.serviceNoticeNotificationEnabled
          : serviceNoticeNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmResponseImpl
    with DiagnosticableTreeMixin
    implements _AlarmResponse {
  const _$AlarmResponseImpl(
      {required this.appUpdateNotificationEnabled,
      required this.marketingTermsAgreed,
      required this.reviewCommentNotificationEnabled,
      required this.serviceNoticeNotificationEnabled});

  factory _$AlarmResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmResponseImplFromJson(json);

  @override
  final bool appUpdateNotificationEnabled;
  @override
  final bool marketingTermsAgreed;
  @override
  final bool reviewCommentNotificationEnabled;
  @override
  final bool serviceNoticeNotificationEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlarmResponse(appUpdateNotificationEnabled: $appUpdateNotificationEnabled, marketingTermsAgreed: $marketingTermsAgreed, reviewCommentNotificationEnabled: $reviewCommentNotificationEnabled, serviceNoticeNotificationEnabled: $serviceNoticeNotificationEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlarmResponse'))
      ..add(DiagnosticsProperty(
          'appUpdateNotificationEnabled', appUpdateNotificationEnabled))
      ..add(DiagnosticsProperty('marketingTermsAgreed', marketingTermsAgreed))
      ..add(DiagnosticsProperty(
          'reviewCommentNotificationEnabled', reviewCommentNotificationEnabled))
      ..add(DiagnosticsProperty('serviceNoticeNotificationEnabled',
          serviceNoticeNotificationEnabled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmResponseImpl &&
            (identical(other.appUpdateNotificationEnabled,
                    appUpdateNotificationEnabled) ||
                other.appUpdateNotificationEnabled ==
                    appUpdateNotificationEnabled) &&
            (identical(other.marketingTermsAgreed, marketingTermsAgreed) ||
                other.marketingTermsAgreed == marketingTermsAgreed) &&
            (identical(other.reviewCommentNotificationEnabled,
                    reviewCommentNotificationEnabled) ||
                other.reviewCommentNotificationEnabled ==
                    reviewCommentNotificationEnabled) &&
            (identical(other.serviceNoticeNotificationEnabled,
                    serviceNoticeNotificationEnabled) ||
                other.serviceNoticeNotificationEnabled ==
                    serviceNoticeNotificationEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appUpdateNotificationEnabled,
      marketingTermsAgreed,
      reviewCommentNotificationEnabled,
      serviceNoticeNotificationEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmResponseImplCopyWith<_$AlarmResponseImpl> get copyWith =>
      __$$AlarmResponseImplCopyWithImpl<_$AlarmResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmResponseImplToJson(
      this,
    );
  }
}

abstract class _AlarmResponse implements AlarmResponse {
  const factory _AlarmResponse(
          {required final bool appUpdateNotificationEnabled,
          required final bool marketingTermsAgreed,
          required final bool reviewCommentNotificationEnabled,
          required final bool serviceNoticeNotificationEnabled}) =
      _$AlarmResponseImpl;

  factory _AlarmResponse.fromJson(Map<String, dynamic> json) =
      _$AlarmResponseImpl.fromJson;

  @override
  bool get appUpdateNotificationEnabled;
  @override
  bool get marketingTermsAgreed;
  @override
  bool get reviewCommentNotificationEnabled;
  @override
  bool get serviceNoticeNotificationEnabled;
  @override
  @JsonKey(ignore: true)
  _$$AlarmResponseImplCopyWith<_$AlarmResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
