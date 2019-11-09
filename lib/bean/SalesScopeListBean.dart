import 'package:json_annotation/json_annotation.dart';

part 'SalesScopeListBean.g.dart';

@JsonSerializable()
class SalesScopeListBean extends Object {

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'enName')
  String enName;

  @JsonKey(name: 'enable')
  bool enable;

  SalesScopeListBean(this.page,this.pageSize,this.id,this.name,this.code,this.enName,this.enable,);

  factory SalesScopeListBean.fromJson(Map<String, dynamic> srcJson) => _$SalesScopeListBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SalesScopeListBeanToJson(this);

}
