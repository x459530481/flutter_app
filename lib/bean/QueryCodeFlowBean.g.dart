// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryCodeFlowBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryCodeFlowBean _$QueryCodeFlowBeanFromJson(Map<String, dynamic> json) {
  return QueryCodeFlowBean(
      json['scanCode'] as String,
      json['scanCodeType'] as int,
      json['level'] as int,
      json['scanTime'] as int,
      json['traceCode'] as String,
      json['productId'] as int,
      json['productCode'] as String,
      json['productName'] as String,
      json['productImageUrl'] as String,
      json['batchCode'] as String,
      json['packDate'] as int,
      json['minPackageUnitName'] as String,
      json['packageUnitName'] as String,
      json['currentLocation'] as int,
      json['currentLocationType'] as int,
      json['currentBillId'] as int,
      json['orgId'] as int,
      json['route'] as String,
      json['flowDetailList'] as List,
      (json['locationInfoList'] as List)
          ?.map((e) => e == null
              ? null
              : LocationInfoBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['dealerSalesScopeRegionList'] as List);
}

Map<String, dynamic> _$QueryCodeFlowBeanToJson(QueryCodeFlowBean instance) =>
    <String, dynamic>{
      'scanCode': instance.scanCode,
      'scanCodeType': instance.scanCodeType,
      'level': instance.level,
      'scanTime': instance.scanTime,
      'traceCode': instance.traceCode,
      'productId': instance.productId,
      'productCode': instance.productCode,
      'productName': instance.productName,
      'productImageUrl': instance.productImageUrl,
      'batchCode': instance.batchCode,
      'packDate': instance.packDate,
      'minPackageUnitName': instance.minPackageUnitName,
      'packageUnitName': instance.packageUnitName,
      'currentLocation': instance.currentLocation,
      'currentLocationType': instance.currentLocationType,
      'currentBillId': instance.currentBillId,
      'orgId': instance.orgId,
      'route': instance.route,
      'flowDetailList': instance.flowDetailList,
      'locationInfoList': instance.locationInfoList,
      'dealerSalesScopeRegionList': instance.dealerSalesScopeRegionList
    };
