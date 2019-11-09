import 'package:flutter_app/bean/BaseBean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'UserBean.g.dart';

@JsonSerializable()
class UserBean {

  @JsonKey(name: 'orgType')
  int orgType;

  @JsonKey(name: 'sessionTimeout')
  int sessionTimeout;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'sessionId')
  String sessionId;

  @JsonKey(name: 'return4GA')
  String return4GA;

  @JsonKey(name: 'orgId')
  int orgId;

  @JsonKey(name: 'username')
  String username;

  UserBean(this.orgType,this.sessionTimeout,this.id,this.sessionId,this.return4GA,this.orgId,this.username,);

  factory UserBean.fromJson(Map<String, dynamic> srcJson) => _$UserBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserBeanToJson(this);

}