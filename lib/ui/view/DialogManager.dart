//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class DialogManager {
//
//  //写一个单例
//  //在 Dart 里，带下划线开头的变量是私有变量
//  static DialogManager _instance;
//
//  BuildContext context;
//
//  AlertDialog alertDialog;
//
//  static DialogManager getInstance(BuildContext context) {
//    if (_instance == null) {
//      _instance = DialogManager();
//    }
//    _instance.setContext(context);
//    return _instance;
//  }
//
//  void setContext(BuildContext context){
//    this.context = context;
//  }
//
//
//
//  DialogManager() {
//    showDialog(
//        context: context,
//        builder: (context) {
//          return new AlertDialog(
//          title: new Text("错误"),
//          content: new Text("用户名不能为空！"),
//          actions: <Widget>[
//            new FlatButton(
//              onPressed: () {
////                    callback.onOk();
//                Navigator.of(context).pop();
//              },
//              child: new Text("确认"),
//            ),
//          ],
//        );
//        }
//         );
//  }
//
//  void showDialog(){
//    if(alertDialog != null){
//      Navigator.of(alertDialog).pop();
//    }
//  }
//}