// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) {
  return _CommentResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentResponse {
  int get id => throw _privateConstructorUsedError;
  MemberResponse get memberView => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentResponseCopyWith<CommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentResponseCopyWith<$Res> {
  factory $CommentResponseCopyWith(
          CommentResponse value, $Res Function(CommentResponse) then) =
      _$CommentResponseCopyWithImpl<$Res, CommentResponse>;
  @useResult
  $Res call(
      {int id,
      MemberResponse memberView,
      String content,
      String date,
      int? parentId});

  $MemberResponseCopyWith<$Res> get memberView;
}

/// @nodoc
class _$CommentResponseCopyWithImpl<$Res, $Val extends CommentResponse>
    implements $CommentResponseCopyWith<$Res> {
  _$CommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberView = null,
    Object? content = null,
    Object? date = null,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberView: null == memberView
          ? _value.memberView
          : memberView // ignore: cast_nullable_to_non_nullable
              as MemberResponse,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberResponseCopyWith<$Res> get memberView {
    return $MemberResponseCopyWith<$Res>(_value.memberView, (value) {
      return _then(_value.copyWith(memberView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentResponseImplCopyWith<$Res>
    implements $CommentResponseCopyWith<$Res> {
  factory _$$CommentResponseImplCopyWith(_$CommentResponseImpl value,
          $Res Function(_$CommentResponseImpl) then) =
      __$$CommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      MemberResponse memberView,
      String content,
      String date,
      int? parentId});

  @override
  $MemberResponseCopyWith<$Res> get memberView;
}

/// @nodoc
class __$$CommentResponseImplCopyWithImpl<$Res>
    extends _$CommentResponseCopyWithImpl<$Res, _$CommentResponseImpl>
    implements _$$CommentResponseImplCopyWith<$Res> {
  __$$CommentResponseImplCopyWithImpl(
      _$CommentResponseImpl _value, $Res Function(_$CommentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberView = null,
    Object? content = null,
    Object? date = null,
    Object? parentId = freezed,
  }) {
    return _then(_$CommentResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberView: null == memberView
          ? _value.memberView
          : memberView // ignore: cast_nullable_to_non_nullable
              as MemberResponse,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentResponseImpl
    with DiagnosticableTreeMixin
    implements _CommentResponse {
  const _$CommentResponseImpl(
      {required this.id,
      required this.memberView,
      required this.content,
      required this.date,
      this.parentId});

  factory _$CommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentResponseImplFromJson(json);

  @override
  final int id;
  @override
  final MemberResponse memberView;
  @override
  final String content;
  @override
  final String date;
  @override
  final int? parentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentResponse(id: $id, memberView: $memberView, content: $content, date: $date, parentId: $parentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('memberView', memberView))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('parentId', parentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberView, memberView) ||
                other.memberView == memberView) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, memberView, content, date, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentResponseImplCopyWith<_$CommentResponseImpl> get copyWith =>
      __$$CommentResponseImplCopyWithImpl<_$CommentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentResponse implements CommentResponse {
  const factory _CommentResponse(
      {required final int id,
      required final MemberResponse memberView,
      required final String content,
      required final String date,
      final int? parentId}) = _$CommentResponseImpl;

  factory _CommentResponse.fromJson(Map<String, dynamic> json) =
      _$CommentResponseImpl.fromJson;

  @override
  int get id;
  @override
  MemberResponse get memberView;
  @override
  String get content;
  @override
  String get date;
  @override
  int? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$CommentResponseImplCopyWith<_$CommentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
