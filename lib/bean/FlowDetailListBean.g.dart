// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FlowDetailListBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlowDetailListBean _$FlowDetailListBeanFromJson(Map<String, dynamic> json) {
  return FlowDetailListBean(
      json['billCode'] as String,
      json['billType'] as int,
      json['billTypeName'] as String,
      json['operateTime'] as int,
      json['srcSubOrgId'] as int,
      json['srcSubOrgCode'] as String,
      json['srcSubOrgName'] as String,
      json['srcSubOrgType'] as int,
      json['destSubOrgId'] as int,
      json['destSubOrgCode'] as String,
      json['destSubOrgName'] as String,
      json['destSubOrgType'] as int,
      json['dealerSalesScopeRegionList'] as List,
      json['salesScopeOverseas'] as bool);
}

Map<String, dynamic> _$FlowDetailListBeanToJson(FlowDetailListBean instance) =>
    <String, dynamic>{
      'billCode': instance.billCode,
      'billType': instance.billType,
      'billTypeName': instance.billTypeName,
      'operateTime': instance.operateTime,
      'srcSubOrgId': instance.srcSubOrgId,
      'srcSubOrgCode': instance.srcSubOrgCode,
      'srcSubOrgName': instance.srcSubOrgName,
      'srcSubOrgType': instance.srcSubOrgType,
      'destSubOrgId': instance.destSubOrgId,
      'destSubOrgCode': instance.destSubOrgCode,
      'destSubOrgName': instance.destSubOrgName,
      'destSubOrgType': instance.destSubOrgType,
      'dealerSalesScopeRegionList': instance.dealerSalesScopeRegionList,
      'salesScopeOverseas': instance.salesScopeOverseas
    };
