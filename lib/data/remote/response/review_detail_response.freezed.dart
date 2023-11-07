// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDetailResponse _$ReviewDetailResponseFromJson(Map<String, dynamic> json) {
  return _ReviewDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewDetailResponse {
  List<CommentResponse>? get comment => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDetailResponseCopyWith<ReviewDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDetailResponseCopyWith<$Res> {
  factory $ReviewDetailResponseCopyWith(ReviewDetailResponse value,
          $Res Function(ReviewDetailResponse) then) =
      _$ReviewDetailResponseCopyWithImpl<$Res, ReviewDetailResponse>;
  @useResult
  $Res call(
      {List<CommentResponse>? comment,
      String? content,
      String createdAt,
      int id,
      List<String>? images,
      int likeCount,
      double? score,
      String title});
}

/// @nodoc
class _$ReviewDetailResponseCopyWithImpl<$Res,
        $Val extends ReviewDetailResponse>
    implements $ReviewDetailResponseCopyWith<$Res> {
  _$ReviewDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? content = freezed,
    Object? createdAt = null,
    Object? id = null,
    Object? images = freezed,
    Object? likeCount = null,
    Object? score = freezed,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<CommentResponse>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDetailResponseImplCopyWith<$Res>
    implements $ReviewDetailResponseCopyWith<$Res> {
  factory _$$ReviewDetailResponseImplCopyWith(_$ReviewDetailResponseImpl value,
          $Res Function(_$ReviewDetailResponseImpl) then) =
      __$$ReviewDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CommentResponse>? comment,
      String? content,
      String createdAt,
      int id,
      List<String>? images,
      int likeCount,
      double? score,
      String title});
}

/// @nodoc
class __$$ReviewDetailResponseImplCopyWithImpl<$Res>
    extends _$ReviewDetailResponseCopyWithImpl<$Res, _$ReviewDetailResponseImpl>
    implements _$$ReviewDetailResponseImplCopyWith<$Res> {
  __$$ReviewDetailResponseImplCopyWithImpl(_$ReviewDetailResponseImpl _value,
      $Res Function(_$ReviewDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? content = freezed,
    Object? createdAt = null,
    Object? id = null,
    Object? images = freezed,
    Object? likeCount = null,
    Object? score = freezed,
    Object? title = null,
  }) {
    return _then(_$ReviewDetailResponseImpl(
      comment: freezed == comment
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<CommentResponse>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDetailResponseImpl
    with DiagnosticableTreeMixin
    implements _ReviewDetailResponse {
  const _$ReviewDetailResponseImpl(
      {final List<CommentResponse>? comment,
      this.content,
      required this.createdAt,
      required this.id,
      final List<String>? images,
      required this.likeCount,
      this.score,
      required this.title})
      : _comment = comment,
        _images = images;

  factory _$ReviewDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDetailResponseImplFromJson(json);

  final List<CommentResponse>? _comment;
  @override
  List<CommentResponse>? get comment {
    final value = _comment;
    if (value == null) return null;
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? content;
  @override
  final String createdAt;
  @override
  final int id;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int likeCount;
  @override
  final double? score;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewDetailResponse(comment: $comment, content: $content, createdAt: $createdAt, id: $id, images: $images, likeCount: $likeCount, score: $score, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewDetailResponse'))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDetailResponseImpl &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comment),
      content,
      createdAt,
      id,
      const DeepCollectionEquality().hash(_images),
      likeCount,
      score,
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDetailResponseImplCopyWith<_$ReviewDetailResponseImpl>
      get copyWith =>
          __$$ReviewDetailResponseImplCopyWithImpl<_$ReviewDetailResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ReviewDetailResponse implements ReviewDetailResponse {
  const factory _ReviewDetailResponse(
      {final List<CommentResponse>? comment,
      final String? content,
      required final String createdAt,
      required final int id,
      final List<String>? images,
      required final int likeCount,
      final double? score,
      required final String title}) = _$ReviewDetailResponseImpl;

  factory _ReviewDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewDetailResponseImpl.fromJson;

  @override
  List<CommentResponse>? get comment;
  @override
  String? get content;
  @override
  String get createdAt;
  @override
  int get id;
  @override
  List<String>? get images;
  @override
  int get likeCount;
  @override
  double? get score;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ReviewDetailResponseImplCopyWith<_$ReviewDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
