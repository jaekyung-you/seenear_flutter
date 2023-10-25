// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interest_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InterestCategoryResponse _$InterestCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _InterestCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$InterestCategoryResponse {
  String get code => throw _privateConstructorUsedError;
  String get displayText => throw _privateConstructorUsedError;
  String get imageSrc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestCategoryResponseCopyWith<InterestCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCategoryResponseCopyWith<$Res> {
  factory $InterestCategoryResponseCopyWith(InterestCategoryResponse value,
          $Res Function(InterestCategoryResponse) then) =
      _$InterestCategoryResponseCopyWithImpl<$Res, InterestCategoryResponse>;
  @useResult
  $Res call({String code, String displayText, String imageSrc});
}

/// @nodoc
class _$InterestCategoryResponseCopyWithImpl<$Res,
        $Val extends InterestCategoryResponse>
    implements $InterestCategoryResponseCopyWith<$Res> {
  _$InterestCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? displayText = null,
    Object? imageSrc = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      displayText: null == displayText
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String,
      imageSrc: null == imageSrc
          ? _value.imageSrc
          : imageSrc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestCategoryResponseImplCopyWith<$Res>
    implements $InterestCategoryResponseCopyWith<$Res> {
  factory _$$InterestCategoryResponseImplCopyWith(
          _$InterestCategoryResponseImpl value,
          $Res Function(_$InterestCategoryResponseImpl) then) =
      __$$InterestCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String displayText, String imageSrc});
}

/// @nodoc
class __$$InterestCategoryResponseImplCopyWithImpl<$Res>
    extends _$InterestCategoryResponseCopyWithImpl<$Res,
        _$InterestCategoryResponseImpl>
    implements _$$InterestCategoryResponseImplCopyWith<$Res> {
  __$$InterestCategoryResponseImplCopyWithImpl(
      _$InterestCategoryResponseImpl _value,
      $Res Function(_$InterestCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? displayText = null,
    Object? imageSrc = null,
  }) {
    return _then(_$InterestCategoryResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      displayText: null == displayText
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String,
      imageSrc: null == imageSrc
          ? _value.imageSrc
          : imageSrc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestCategoryResponseImpl
    with DiagnosticableTreeMixin
    implements _InterestCategoryResponse {
  const _$InterestCategoryResponseImpl(
      {required this.code, required this.displayText, required this.imageSrc});

  factory _$InterestCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestCategoryResponseImplFromJson(json);

  @override
  final String code;
  @override
  final String displayText;
  @override
  final String imageSrc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InterestCategoryResponse(code: $code, displayText: $displayText, imageSrc: $imageSrc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InterestCategoryResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('displayText', displayText))
      ..add(DiagnosticsProperty('imageSrc', imageSrc));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestCategoryResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.displayText, displayText) ||
                other.displayText == displayText) &&
            (identical(other.imageSrc, imageSrc) ||
                other.imageSrc == imageSrc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, displayText, imageSrc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestCategoryResponseImplCopyWith<_$InterestCategoryResponseImpl>
      get copyWith => __$$InterestCategoryResponseImplCopyWithImpl<
          _$InterestCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _InterestCategoryResponse implements InterestCategoryResponse {
  const factory _InterestCategoryResponse(
      {required final String code,
      required final String displayText,
      required final String imageSrc}) = _$InterestCategoryResponseImpl;

  factory _InterestCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$InterestCategoryResponseImpl.fromJson;

  @override
  String get code;
  @override
  String get displayText;
  @override
  String get imageSrc;
  @override
  @JsonKey(ignore: true)
  _$$InterestCategoryResponseImplCopyWith<_$InterestCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
