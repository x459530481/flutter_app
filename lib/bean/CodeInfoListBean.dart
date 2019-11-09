import 'package:json_annotation/json_annotation.dart';

import 'FlowDetailListBean.dart';

part 'CodeInfoListBean.g.dart';

@JsonSerializable()
class CodeInfoListBean extends Object {

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'flowDetailList')
  List<FlowDetailListBean> flowDetailList;

  @JsonKey(defaultValue: false)
  bool openShow = false;

  CodeInfoListBean(this.code,this.flowDetailList,this.openShow,);

  factory CodeInfoListBean.fromJson(Map<String, dynamic> srcJson) => _$CodeInfoListBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CodeInfoListBeanToJson(this);

}