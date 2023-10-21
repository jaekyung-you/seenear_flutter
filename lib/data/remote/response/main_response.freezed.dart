// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainResponse _$MainResponseFromJson(Map<String, dynamic> json) {
  return _MainResponse.fromJson(json);
}

/// @nodoc
mixin _$MainResponse {
  List<MainCategoryResponse> get categoryList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainResponseCopyWith<MainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainResponseCopyWith<$Res> {
  factory $MainResponseCopyWith(
          MainResponse value, $Res Function(MainResponse) then) =
      _$MainResponseCopyWithImpl<$Res, MainResponse>;
  @useResult
  $Res call({List<MainCategoryResponse> categoryList});
}

/// @nodoc
class _$MainResponseCopyWithImpl<$Res, $Val extends MainResponse>
    implements $MainResponseCopyWith<$Res> {
  _$MainResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<MainCategoryResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainResponseImplCopyWith<$Res>
    implements $MainResponseCopyWith<$Res> {
  factory _$$MainResponseImplCopyWith(
          _$MainResponseImpl value, $Res Function(_$MainResponseImpl) then) =
      __$$MainResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MainCategoryResponse> categoryList});
}

/// @nodoc
class __$$MainResponseImplCopyWithImpl<$Res>
    extends _$MainResponseCopyWithImpl<$Res, _$MainResponseImpl>
    implements _$$MainResponseImplCopyWith<$Res> {
  __$$MainResponseImplCopyWithImpl(
      _$MainResponseImpl _value, $Res Function(_$MainResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_$MainResponseImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<MainCategoryResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainResponseImpl with DiagnosticableTreeMixin implements _MainResponse {
  const _$MainResponseImpl(
      {required final List<MainCategoryResponse> categoryList})
      : _categoryList = categoryList;

  factory _$MainResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainResponseImplFromJson(json);

  final List<MainCategoryResponse> _categoryList;
  @override
  List<MainCategoryResponse> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainResponse(categoryList: $categoryList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainResponse'))
      ..add(DiagnosticsProperty('categoryList', categoryList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainResponseImplCopyWith<_$MainResponseImpl> get copyWith =>
      __$$MainResponseImplCopyWithImpl<_$MainResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainResponseImplToJson(
      this,
    );
  }
}

abstract class _MainResponse implements MainResponse {
  const factory _MainResponse(
          {required final List<MainCategoryResponse> categoryList}) =
      _$MainResponseImpl;

  factory _MainResponse.fromJson(Map<String, dynamic> json) =
      _$MainResponseImpl.fromJson;

  @override
  List<MainCategoryResponse> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$MainResponseImplCopyWith<_$MainResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
