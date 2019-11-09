// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SalesScopeListBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesScopeListBean _$SalesScopeListBeanFromJson(Map<String, dynamic> json) {
  return SalesScopeListBean(
      json['page'] as int,
      json['pageSize'] as int,
      json['id'] as int,
      json['name'] as String,
      json['code'] as String,
      json['enName'] as String,
      json['enable'] as bool);
}

Map<String, dynamic> _$SalesScopeListBeanToJson(SalesScopeListBean instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'enName': instance.enName,
      'enable': instance.enable
    };
