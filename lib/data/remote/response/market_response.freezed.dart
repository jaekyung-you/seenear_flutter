// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketResponse _$MarketResponseFromJson(Map<String, dynamic> json) {
  return _MarketResponse.fromJson(json);
}

/// @nodoc
mixin _$MarketResponse {
  int get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get addressDetailA => throw _privateConstructorUsedError;
  String get addressDetailB => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  List<String> get imageSrc => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get totalComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketResponseCopyWith<MarketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketResponseCopyWith<$Res> {
  factory $MarketResponseCopyWith(
          MarketResponse value, $Res Function(MarketResponse) then) =
      _$MarketResponseCopyWithImpl<$Res, MarketResponse>;
  @useResult
  $Res call(
      {int itemId,
      String name,
      String addressDetailA,
      String addressDetailB,
      String date,
      List<String> imageSrc,
      int score,
      int totalComment});
}

/// @nodoc
class _$MarketResponseCopyWithImpl<$Res, $Val extends MarketResponse>
    implements $MarketResponseCopyWith<$Res> {
  _$MarketResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? addressDetailA = null,
    Object? addressDetailB = null,
    Object? date = null,
    Object? imageSrc = null,
    Object? score = null,
    Object? totalComment = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailA: null == addressDetailA
          ? _value.addressDetailA
          : addressDetailA // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailB: null == addressDetailB
          ? _value.addressDetailB
          : addressDetailB // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      imageSrc: null == imageSrc
          ? _value.imageSrc
          : imageSrc // ignore: cast_nullable_to_non_nullable
              as List<String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      totalComment: null == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketResponseImplCopyWith<$Res>
    implements $MarketResponseCopyWith<$Res> {
  factory _$$MarketResponseImplCopyWith(_$MarketResponseImpl value,
          $Res Function(_$MarketResponseImpl) then) =
      __$$MarketResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemId,
      String name,
      String addressDetailA,
      String addressDetailB,
      String date,
      List<String> imageSrc,
      int score,
      int totalComment});
}

/// @nodoc
class __$$MarketResponseImplCopyWithImpl<$Res>
    extends _$MarketResponseCopyWithImpl<$Res, _$MarketResponseImpl>
    implements _$$MarketResponseImplCopyWith<$Res> {
  __$$MarketResponseImplCopyWithImpl(
      _$MarketResponseImpl _value, $Res Function(_$MarketResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? addressDetailA = null,
    Object? addressDetailB = null,
    Object? date = null,
    Object? imageSrc = null,
    Object? score = null,
    Object? totalComment = null,
  }) {
    return _then(_$MarketResponseImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailA: null == addressDetailA
          ? _value.addressDetailA
          : addressDetailA // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailB: null == addressDetailB
          ? _value.addressDetailB
          : addressDetailB // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      imageSrc: null == imageSrc
          ? _value._imageSrc
          : imageSrc // ignore: cast_nullable_to_non_nullable
              as List<String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      totalComment: null == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketResponseImpl
    with DiagnosticableTreeMixin
    implements _MarketResponse {
  const _$MarketResponseImpl(
      {required this.itemId,
      required this.name,
      required this.addressDetailA,
      required this.addressDetailB,
      required this.date,
      required final List<String> imageSrc,
      required this.score,
      required this.totalComment})
      : _imageSrc = imageSrc;

  factory _$MarketResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketResponseImplFromJson(json);

  @override
  final int itemId;
  @override
  final String name;
  @override
  final String addressDetailA;
  @override
  final String addressDetailB;
  @override
  final String date;
  final List<String> _imageSrc;
  @override
  List<String> get imageSrc {
    if (_imageSrc is EqualUnmodifiableListView) return _imageSrc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageSrc);
  }

  @override
  final int score;
  @override
  final int totalComment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MarketResponse(itemId: $itemId, name: $name, addressDetailA: $addressDetailA, addressDetailB: $addressDetailB, date: $date, imageSrc: $imageSrc, score: $score, totalComment: $totalComment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MarketResponse'))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('addressDetailA', addressDetailA))
      ..add(DiagnosticsProperty('addressDetailB', addressDetailB))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('imageSrc', imageSrc))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('totalComment', totalComment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketResponseImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressDetailA, addressDetailA) ||
                other.addressDetailA == addressDetailA) &&
            (identical(other.addressDetailB, addressDetailB) ||
                other.addressDetailB == addressDetailB) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._imageSrc, _imageSrc) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalComment, totalComment) ||
                other.totalComment == totalComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      name,
      addressDetailA,
      addressDetailB,
      date,
      const DeepCollectionEquality().hash(_imageSrc),
      score,
      totalComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketResponseImplCopyWith<_$MarketResponseImpl> get copyWith =>
      __$$MarketResponseImplCopyWithImpl<_$MarketResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketResponseImplToJson(
      this,
    );
  }
}

abstract class _MarketResponse implements MarketResponse {
  const factory _MarketResponse(
      {required final int itemId,
      required final String name,
      required final String addressDetailA,
      required final String addressDetailB,
      required final String date,
      required final List<String> imageSrc,
      required final int score,
      required final int totalComment}) = _$MarketResponseImpl;

  factory _MarketResponse.fromJson(Map<String, dynamic> json) =
      _$MarketResponseImpl.fromJson;

  @override
  int get itemId;
  @override
  String get name;
  @override
  String get addressDetailA;
  @override
  String get addressDetailB;
  @override
  String get date;
  @override
  List<String> get imageSrc;
  @override
  int get score;
  @override
  int get totalComment;
  @override
  @JsonKey(ignore: true)
  _$$MarketResponseImplCopyWith<_$MarketResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
