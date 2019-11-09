import 'package:json_annotation/json_annotation.dart';
import 'LocationInfoBean.dart';

part 'QueryCodeFlowBean.g.dart';

@JsonSerializable()
class QueryCodeFlowBean extends Object {

  @JsonKey(name: 'scanCode')
  String scanCode;

  @JsonKey(name: 'scanCodeType')
  int scanCodeType;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'scanTime')
  int scanTime;

  @JsonKey(name: 'traceCode')
  String traceCode;

  @JsonKey(name: 'productId')
  int productId;

  @JsonKey(name: 'productCode')
  String productCode;

  @JsonKey(name: 'productName')
  String productName;

  @JsonKey(name: 'productImageUrl')
  String productImageUrl;

  @JsonKey(name: 'batchCode')
  String batchCode;

  @JsonKey(name: 'packDate')
  int packDate;

  @JsonKey(name: 'minPackageUnitName')
  String minPackageUnitName;

  @JsonKey(name: 'packageUnitName')
  String packageUnitName;

  @JsonKey(name: 'currentLocation')
  int currentLocation;

  @JsonKey(name: 'currentLocationType')
  int currentLocationType;

  @JsonKey(name: 'currentBillId')
  int currentBillId;

  @JsonKey(name: 'orgId')
  int orgId;

  @JsonKey(name: 'route')
  String route;

  @JsonKey(name: 'flowDetailList')
  List<dynamic> flowDetailList;

  @JsonKey(name: 'locationInfoList')
  List<LocationInfoBean> locationInfoList;

  @JsonKey(name: 'dealerSalesScopeRegionList')
  List<dynamic> dealerSalesScopeRegionList;

  QueryCodeFlowBean(this.scanCode,this.scanCodeType,this.level,this.scanTime,this.traceCode,this.productId,this.productCode,this.productName,this.productImageUrl,this.batchCode,this.packDate,this.minPackageUnitName,this.packageUnitName,this.currentLocation,this.currentLocationType,this.currentBillId,this.orgId,this.route,this.flowDetailList,this.locationInfoList,this.dealerSalesScopeRegionList,);

  factory QueryCodeFlowBean.fromJson(Map<String, dynamic> srcJson) => _$QueryCodeFlowBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$QueryCodeFlowBeanToJson(this);

}