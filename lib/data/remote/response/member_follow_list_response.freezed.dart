// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_follow_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberFollowListResponse _$MemberFollowListResponseFromJson(
    Map<String, dynamic> json) {
  return _MemberFollowListResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberFollowListResponse {
  String get followedAt => throw _privateConstructorUsedError;
  bool get followered => throw _privateConstructorUsedError; // 팔로잉 하는 사람인지 여부
  List<MemberResponse>? get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberFollowListResponseCopyWith<MemberFollowListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberFollowListResponseCopyWith<$Res> {
  factory $MemberFollowListResponseCopyWith(MemberFollowListResponse value,
          $Res Function(MemberFollowListResponse) then) =
      _$MemberFollowListResponseCopyWithImpl<$Res, MemberFollowListResponse>;
  @useResult
  $Res call(
      {String followedAt, bool followered, List<MemberResponse>? members});
}

/// @nodoc
class _$MemberFollowListResponseCopyWithImpl<$Res,
        $Val extends MemberFollowListResponse>
    implements $MemberFollowListResponseCopyWith<$Res> {
  _$MemberFollowListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followedAt = null,
    Object? followered = null,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      followedAt: null == followedAt
          ? _value.followedAt
          : followedAt // ignore: cast_nullable_to_non_nullable
              as String,
      followered: null == followered
          ? _value.followered
          : followered // ignore: cast_nullable_to_non_nullable
              as bool,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberFollowListResponseImplCopyWith<$Res>
    implements $MemberFollowListResponseCopyWith<$Res> {
  factory _$$MemberFollowListResponseImplCopyWith(
          _$MemberFollowListResponseImpl value,
          $Res Function(_$MemberFollowListResponseImpl) then) =
      __$$MemberFollowListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String followedAt, bool followered, List<MemberResponse>? members});
}

/// @nodoc
class __$$MemberFollowListResponseImplCopyWithImpl<$Res>
    extends _$MemberFollowListResponseCopyWithImpl<$Res,
        _$MemberFollowListResponseImpl>
    implements _$$MemberFollowListResponseImplCopyWith<$Res> {
  __$$MemberFollowListResponseImplCopyWithImpl(
      _$MemberFollowListResponseImpl _value,
      $Res Function(_$MemberFollowListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followedAt = null,
    Object? followered = null,
    Object? members = freezed,
  }) {
    return _then(_$MemberFollowListResponseImpl(
      followedAt: null == followedAt
          ? _value.followedAt
          : followedAt // ignore: cast_nullable_to_non_nullable
              as String,
      followered: null == followered
          ? _value.followered
          : followered // ignore: cast_nullable_to_non_nullable
              as bool,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberFollowListResponseImpl
    with DiagnosticableTreeMixin
    implements _MemberFollowListResponse {
  const _$MemberFollowListResponseImpl(
      {required this.followedAt,
      required this.followered,
      final List<MemberResponse>? members})
      : _members = members;

  factory _$MemberFollowListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberFollowListResponseImplFromJson(json);

  @override
  final String followedAt;
  @override
  final bool followered;
// 팔로잉 하는 사람인지 여부
  final List<MemberResponse>? _members;
// 팔로잉 하는 사람인지 여부
  @override
  List<MemberResponse>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberFollowListResponse(followedAt: $followedAt, followered: $followered, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberFollowListResponse'))
      ..add(DiagnosticsProperty('followedAt', followedAt))
      ..add(DiagnosticsProperty('followered', followered))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberFollowListResponseImpl &&
            (identical(other.followedAt, followedAt) ||
                other.followedAt == followedAt) &&
            (identical(other.followered, followered) ||
                other.followered == followered) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, followedAt, followered,
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberFollowListResponseImplCopyWith<_$MemberFollowListResponseImpl>
      get copyWith => __$$MemberFollowListResponseImplCopyWithImpl<
          _$MemberFollowListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberFollowListResponseImplToJson(
      this,
    );
  }
}

abstract class _MemberFollowListResponse implements MemberFollowListResponse {
  const factory _MemberFollowListResponse(
      {required final String followedAt,
      required final bool followered,
      final List<MemberResponse>? members}) = _$MemberFollowListResponseImpl;

  factory _MemberFollowListResponse.fromJson(Map<String, dynamic> json) =
      _$MemberFollowListResponseImpl.fromJson;

  @override
  String get followedAt;
  @override
  bool get followered;
  @override // 팔로잉 하는 사람인지 여부
  List<MemberResponse>? get members;
  @override
  @JsonKey(ignore: true)
  _$$MemberFollowListResponseImplCopyWith<_$MemberFollowListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
