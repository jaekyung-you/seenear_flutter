// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewListResponse _$ReviewListResponseFromJson(Map<String, dynamic> json) {
  return _ReviewListResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewListResponse {
  List<ReviewItemResponse>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewListResponseCopyWith<ReviewListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListResponseCopyWith<$Res> {
  factory $ReviewListResponseCopyWith(
          ReviewListResponse value, $Res Function(ReviewListResponse) then) =
      _$ReviewListResponseCopyWithImpl<$Res, ReviewListResponse>;
  @useResult
  $Res call({List<ReviewItemResponse>? data});
}

/// @nodoc
class _$ReviewListResponseCopyWithImpl<$Res, $Val extends ReviewListResponse>
    implements $ReviewListResponseCopyWith<$Res> {
  _$ReviewListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReviewItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewListResponseImplCopyWith<$Res>
    implements $ReviewListResponseCopyWith<$Res> {
  factory _$$ReviewListResponseImplCopyWith(_$ReviewListResponseImpl value,
          $Res Function(_$ReviewListResponseImpl) then) =
      __$$ReviewListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReviewItemResponse>? data});
}

/// @nodoc
class __$$ReviewListResponseImplCopyWithImpl<$Res>
    extends _$ReviewListResponseCopyWithImpl<$Res, _$ReviewListResponseImpl>
    implements _$$ReviewListResponseImplCopyWith<$Res> {
  __$$ReviewListResponseImplCopyWithImpl(_$ReviewListResponseImpl _value,
      $Res Function(_$ReviewListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReviewListResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReviewItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewListResponseImpl
    with DiagnosticableTreeMixin
    implements _ReviewListResponse {
  const _$ReviewListResponseImpl({final List<ReviewItemResponse>? data})
      : _data = data;

  factory _$ReviewListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewListResponseImplFromJson(json);

  final List<ReviewItemResponse>? _data;
  @override
  List<ReviewItemResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewListResponse(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewListResponse'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewListResponseImplCopyWith<_$ReviewListResponseImpl> get copyWith =>
      __$$ReviewListResponseImplCopyWithImpl<_$ReviewListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewListResponseImplToJson(
      this,
    );
  }
}

abstract class _ReviewListResponse implements ReviewListResponse {
  const factory _ReviewListResponse({final List<ReviewItemResponse>? data}) =
      _$ReviewListResponseImpl;

  factory _ReviewListResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewListResponseImpl.fromJson;

  @override
  List<ReviewItemResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ReviewListResponseImplCopyWith<_$ReviewListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
