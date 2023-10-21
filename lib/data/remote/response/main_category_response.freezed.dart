// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainCategoryResponse _$MainCategoryResponseFromJson(Map<String, dynamic> json) {
  return _MainCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$MainCategoryResponse {
  String get mainName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get subName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCategoryResponseCopyWith<MainCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryResponseCopyWith<$Res> {
  factory $MainCategoryResponseCopyWith(MainCategoryResponse value,
          $Res Function(MainCategoryResponse) then) =
      _$MainCategoryResponseCopyWithImpl<$Res, MainCategoryResponse>;
  @useResult
  $Res call({String mainName, bool isActive, String? subName});
}

/// @nodoc
class _$MainCategoryResponseCopyWithImpl<$Res,
        $Val extends MainCategoryResponse>
    implements $MainCategoryResponseCopyWith<$Res> {
  _$MainCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainName = null,
    Object? isActive = null,
    Object? subName = freezed,
  }) {
    return _then(_value.copyWith(
      mainName: null == mainName
          ? _value.mainName
          : mainName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      subName: freezed == subName
          ? _value.subName
          : subName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainCategoryResponseImplCopyWith<$Res>
    implements $MainCategoryResponseCopyWith<$Res> {
  factory _$$MainCategoryResponseImplCopyWith(_$MainCategoryResponseImpl value,
          $Res Function(_$MainCategoryResponseImpl) then) =
      __$$MainCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainName, bool isActive, String? subName});
}

/// @nodoc
class __$$MainCategoryResponseImplCopyWithImpl<$Res>
    extends _$MainCategoryResponseCopyWithImpl<$Res, _$MainCategoryResponseImpl>
    implements _$$MainCategoryResponseImplCopyWith<$Res> {
  __$$MainCategoryResponseImplCopyWithImpl(_$MainCategoryResponseImpl _value,
      $Res Function(_$MainCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainName = null,
    Object? isActive = null,
    Object? subName = freezed,
  }) {
    return _then(_$MainCategoryResponseImpl(
      mainName: null == mainName
          ? _value.mainName
          : mainName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      subName: freezed == subName
          ? _value.subName
          : subName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainCategoryResponseImpl
    with DiagnosticableTreeMixin
    implements _MainCategoryResponse {
  const _$MainCategoryResponseImpl(
      {required this.mainName, required this.isActive, this.subName});

  factory _$MainCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCategoryResponseImplFromJson(json);

  @override
  final String mainName;
  @override
  final bool isActive;
  @override
  final String? subName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainCategoryResponse(mainName: $mainName, isActive: $isActive, subName: $subName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainCategoryResponse'))
      ..add(DiagnosticsProperty('mainName', mainName))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('subName', subName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCategoryResponseImpl &&
            (identical(other.mainName, mainName) ||
                other.mainName == mainName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.subName, subName) || other.subName == subName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainName, isActive, subName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCategoryResponseImplCopyWith<_$MainCategoryResponseImpl>
      get copyWith =>
          __$$MainCategoryResponseImplCopyWithImpl<_$MainCategoryResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _MainCategoryResponse implements MainCategoryResponse {
  const factory _MainCategoryResponse(
      {required final String mainName,
      required final bool isActive,
      final String? subName}) = _$MainCategoryResponseImpl;

  factory _MainCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$MainCategoryResponseImpl.fromJson;

  @override
  String get mainName;
  @override
  bool get isActive;
  @override
  String? get subName;
  @override
  @JsonKey(ignore: true)
  _$$MainCategoryResponseImplCopyWith<_$MainCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
