// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseModel<M> _$ApiResponseModelFromJson<M>(
  Map<String, dynamic> json,
  M Function(Object? json) fromJsonM,
) =>
    ApiResponseModel<M>(
      success: json['success'] as bool?,
      data: _$nullableGenericFromJson(json['data'], fromJsonM),
      message: json['msg'] as String?,
      error: json['error'] as String?,
      forceLogout: json['forceLogout'] as bool?,
    );

Map<String, dynamic> _$ApiResponseModelToJson<M>(
  ApiResponseModel<M> instance,
  Object? Function(M value) toJsonM,
) =>
    <String, dynamic>{
      'success': instance.success,
      'data': _$nullableGenericToJson(instance.data, toJsonM),
      'msg': instance.message,
      'error': instance.error,
      'forceLogout': instance.forceLogout,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
