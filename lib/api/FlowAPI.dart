import 'dart:convert';

import 'package:flutter_app/bean/BaseBean.dart';
import 'package:flutter_app/bean/QueryCodeFlowBean.dart';

import 'base/DioManager.dart';


class FlowAPI{
  static FlowAPI _instance;

  static FlowAPI getInstance() {
    if (_instance == null) {
      _instance = FlowAPI();
    }
    return _instance;
  }

  static String QUERY_CODE_FLOW = "api/wms/productionCodeFlow/queryCodeFlow";

  void queryCodeFlow(Map<String, dynamic> params,Function callBack){
    DioManager.getInstance().get(
        QUERY_CODE_FLOW,params,
        //正常回调
        (data) {
          var baseBean = BaseBean.fromJson(data);
          callBack(baseBean.code,baseBean.errMsg,QueryCodeFlowBean.fromJson(baseBean.data));
        },
        //错误回调
            (error){

        }
    );
  }



}
