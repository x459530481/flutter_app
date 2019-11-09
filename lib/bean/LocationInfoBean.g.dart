// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocationInfoBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationInfoBean _$LocationInfoBeanFromJson(Map<String, dynamic> json) {
  return LocationInfoBean(
      json['code'] as String,
      json['name'] as String,
      json['subOrgType'] as int,
      json['qty'] as int,
      (json['codeInfoList'] as List)
          ?.map((e) => e == null
              ? null
              : CodeInfoListBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['salesScopeList'] as List)
          ?.map((e) => e == null
              ? null
              : SalesScopeListBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['salesScopeOverseas'] as bool,
      json['openShow'] as bool ?? false);
}

Map<String, dynamic> _$LocationInfoBeanToJson(LocationInfoBean instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'subOrgType': instance.subOrgType,
      'qty': instance.qty,
      'codeInfoList': instance.codeInfoList,
      'salesScopeList': instance.salesScopeList,
      'salesScopeOverseas': instance.salesScopeOverseas,
      'openShow': instance.openShow
    };
