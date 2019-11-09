import 'dart:convert';

import 'package:flutter_app/bean/BaseBean.dart';
import 'package:flutter_app/bean/UserBean.dart';

import 'base/DioManager.dart';


class LoginAPI{

  static LoginAPI _instance;

  static LoginAPI getInstance() {
    if (_instance == null) {
      _instance = LoginAPI();
    }
    return _instance;
  }

  static String LOGIN = "api/sys/passport/login";

  void doLogin(Map<String, dynamic> params,Function callBack){
    DioManager.getInstance().post(
        LOGIN,params,
        //正常回调
        (data) {
          var baseBean = BaseBean.fromJson(data);
          callBack(baseBean.code,baseBean.errMsg,UserBean.fromJson(baseBean.data));
        },
        //错误回调
        (error){

        }
    );
  }
}
