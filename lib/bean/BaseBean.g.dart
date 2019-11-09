// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseBean _$BaseBeanFromJson(Map<String, dynamic> json) {
  return BaseBean(json['code'] as int, json['errMsg'] as String,
      json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BaseBeanToJson(BaseBean instance) => <String, dynamic>{
      'code': instance.code,
      'errMsg': instance.errMsg,
      'data': instance.data
    };
