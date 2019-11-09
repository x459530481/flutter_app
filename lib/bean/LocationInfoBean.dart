import 'package:json_annotation/json_annotation.dart';

import 'CodeInfoListBean.dart';
import 'SalesScopeListBean.dart';

part 'LocationInfoBean.g.dart';

@JsonSerializable()
class LocationInfoBean extends Object {

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'subOrgType')
  int subOrgType;

  @JsonKey(name: 'qty')
  int qty;

  @JsonKey(name: 'codeInfoList')
  List<CodeInfoListBean> codeInfoList;

  @JsonKey(name: 'salesScopeList')
  List<SalesScopeListBean> salesScopeList;

  @JsonKey(name: 'salesScopeOverseas')
  bool salesScopeOverseas;

  @JsonKey(defaultValue: false)
  bool openShow = false;

  LocationInfoBean(this.code,this.name,this.subOrgType,this.qty,this.codeInfoList,this.salesScopeList,this.salesScopeOverseas,this.openShow);

  factory LocationInfoBean.fromJson(Map<String, dynamic> srcJson) => _$LocationInfoBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LocationInfoBeanToJson(this);

}