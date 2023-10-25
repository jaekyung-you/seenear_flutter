import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address_response.freezed.dart';

part 'address_response.g.dart';

@freezed
class AddressResponse with _$AddressResponse {
  const factory AddressResponse({
    required int id,
    required String addressDetailA,
    required String addressDetailB,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, Object?> json) => _$AddressResponseFromJson(json);
}
