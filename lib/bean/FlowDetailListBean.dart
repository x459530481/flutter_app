import 'package:json_annotation/json_annotation.dart';

part 'FlowDetailListBean.g.dart';


@JsonSerializable()
class FlowDetailListBean extends Object {

  @JsonKey(name: 'billCode')
  String billCode;

  @JsonKey(name: 'billType')
  int billType;

  @JsonKey(name: 'billTypeName')
  String billTypeName;

  @JsonKey(name: 'operateTime')
  int operateTime;

  @JsonKey(name: 'srcSubOrgId')
  int srcSubOrgId;

  @JsonKey(name: 'srcSubOrgCode')
  String srcSubOrgCode;

  @JsonKey(name: 'srcSubOrgName')
  String srcSubOrgName;

  @JsonKey(name: 'srcSubOrgType')
  int srcSubOrgType;

  @JsonKey(name: 'destSubOrgId')
  int destSubOrgId;

  @JsonKey(name: 'destSubOrgCode')
  String destSubOrgCode;

  @JsonKey(name: 'destSubOrgName')
  String destSubOrgName;

  @JsonKey(name: 'destSubOrgType')
  int destSubOrgType;

  @JsonKey(name: 'dealerSalesScopeRegionList')
  List<dynamic> dealerSalesScopeRegionList;

  @JsonKey(name: 'salesScopeOverseas')
  bool salesScopeOverseas;

  FlowDetailListBean(this.billCode,this.billType,this.billTypeName,this.operateTime,this.srcSubOrgId,this.srcSubOrgCode,this.srcSubOrgName,this.srcSubOrgType,this.destSubOrgId,this.destSubOrgCode,this.destSubOrgName,this.destSubOrgType,this.dealerSalesScopeRegionList,this.salesScopeOverseas,);

  factory FlowDetailListBean.fromJson(Map<String, dynamic> srcJson) => _$FlowDetailListBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FlowDetailListBeanToJson(this);

}