// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewItemResponse _$ReviewItemResponseFromJson(Map<String, dynamic> json) {
  return _ReviewItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewItemResponse {
  int get id => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewItemResponseCopyWith<ReviewItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewItemResponseCopyWith<$Res> {
  factory $ReviewItemResponseCopyWith(
          ReviewItemResponse value, $Res Function(ReviewItemResponse) then) =
      _$ReviewItemResponseCopyWithImpl<$Res, ReviewItemResponse>;
  @useResult
  $Res call(
      {int id,
      int itemId,
      int? commentCount,
      String? content,
      String? date,
      String? images,
      int? likeCount});
}

/// @nodoc
class _$ReviewItemResponseCopyWithImpl<$Res, $Val extends ReviewItemResponse>
    implements $ReviewItemResponseCopyWith<$Res> {
  _$ReviewItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? commentCount = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? images = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewItemResponseImplCopyWith<$Res>
    implements $ReviewItemResponseCopyWith<$Res> {
  factory _$$ReviewItemResponseImplCopyWith(_$ReviewItemResponseImpl value,
          $Res Function(_$ReviewItemResponseImpl) then) =
      __$$ReviewItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int itemId,
      int? commentCount,
      String? content,
      String? date,
      String? images,
      int? likeCount});
}

/// @nodoc
class __$$ReviewItemResponseImplCopyWithImpl<$Res>
    extends _$ReviewItemResponseCopyWithImpl<$Res, _$ReviewItemResponseImpl>
    implements _$$ReviewItemResponseImplCopyWith<$Res> {
  __$$ReviewItemResponseImplCopyWithImpl(_$ReviewItemResponseImpl _value,
      $Res Function(_$ReviewItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? commentCount = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? images = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_$ReviewItemResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewItemResponseImpl
    with DiagnosticableTreeMixin
    implements _ReviewItemResponse {
  const _$ReviewItemResponseImpl(
      {required this.id,
      required this.itemId,
      this.commentCount,
      this.content,
      this.date,
      this.images,
      this.likeCount});

  factory _$ReviewItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewItemResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int itemId;
  @override
  final int? commentCount;
  @override
  final String? content;
  @override
  final String? date;
  @override
  final String? images;
  @override
  final int? likeCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewItemResponse(id: $id, itemId: $itemId, commentCount: $commentCount, content: $content, date: $date, images: $images, likeCount: $likeCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewItemResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('commentCount', commentCount))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('likeCount', likeCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, itemId, commentCount, content, date, images, likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewItemResponseImplCopyWith<_$ReviewItemResponseImpl> get copyWith =>
      __$$ReviewItemResponseImplCopyWithImpl<_$ReviewItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewItemResponseImplToJson(
      this,
    );
  }
}

abstract class _ReviewItemResponse implements ReviewItemResponse {
  const factory _ReviewItemResponse(
      {required final int id,
      required final int itemId,
      final int? commentCount,
      final String? content,
      final String? date,
      final String? images,
      final int? likeCount}) = _$ReviewItemResponseImpl;

  factory _ReviewItemResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewItemResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get itemId;
  @override
  int? get commentCount;
  @override
  String? get content;
  @override
  String? get date;
  @override
  String? get images;
  @override
  int? get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$ReviewItemResponseImplCopyWith<_$ReviewItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
