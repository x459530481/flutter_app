// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBean _$UserBeanFromJson(Map<String, dynamic> json) {
  return UserBean(
      json['orgType'] as int,
      json['sessionTimeout'] as int,
      json['id'] as int,
      json['sessionId'] as String,
      json['return4GA'] as String,
      json['orgId'] as int,
      json['username'] as String);
}

Map<String, dynamic> _$UserBeanToJson(UserBean instance) => <String, dynamic>{
      'orgType': instance.orgType,
      'sessionTimeout': instance.sessionTimeout,
      'id': instance.id,
      'sessionId': instance.sessionId,
      'return4GA': instance.return4GA,
      'orgId': instance.orgId,
      'username': instance.username
    };
