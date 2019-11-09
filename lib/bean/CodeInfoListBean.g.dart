// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CodeInfoListBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeInfoListBean _$CodeInfoListBeanFromJson(Map<String, dynamic> json) {
  return CodeInfoListBean(
      json['code'] as String,
      (json['flowDetailList'] as List)
          ?.map((e) => e == null
              ? null
              : FlowDetailListBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['openShow'] as bool ?? false);
}

Map<String, dynamic> _$CodeInfoListBeanToJson(CodeInfoListBean instance) =>
    <String, dynamic>{
      'code': instance.code,
      'flowDetailList': instance.flowDetailList,
      'openShow': instance.openShow
    };
