import 'package:flutter/material.dart';
import 'package:flutter_app/api/FlowAPI.dart';
import 'package:flutter_app/bean/QueryCodeFlowBean.dart';


class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with SingleTickerProviderStateMixin {
  Animation animation;
  Animation animation2;
  AnimationController animationController;
  AnimationController animationController2;

  QueryCodeFlowBean queryCodeFlowBean;

  ListView listView;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
//    animationController2 = new AnimationController(
//        vsync: this, duration: Duration(milliseconds: 200));
    animation = new Tween(begin: 0.0, end: 0.5).animate(animationController);
//    animation2 = new Tween(begin: 0.0, end: 0.5).animate(animationController2);

    var codeStr = "https://zpws.xyz/p/79.30.01939100000000091068";//外网测试环境
//    var codeStr = "2894.20.01911500000000027118";//开发环境

    FlowAPI.getInstance().queryCodeFlow({"code":codeStr}, (code,err,data){
      if(code != 0){
        showDialog(
            context: context,
            builder: (context) {
              return new AlertDialog(
                title: new Text("错误"),
                content: new Text(err),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () {
//                    callback.onOk();
                      Navigator.of(context).pop();
                    },
                    child: new Text("确认"),
                  ),
                ],
              );
            });

        return;
      }
      queryCodeFlowBean = data;
      _initList();

      setState(() {

      });
    });
  }

  _changeOpacity(bool expand) {
    setState(() {
      if (expand) {
        animationController.forward();

      } else {
        animationController.reverse();


      }
    });
  }

  _changeOpacity2(bool expand) {
    setState(() {
      if (expand) {
        animationController2.forward();

      } else {
        animationController2.reverse();


      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _initList();
    return Scaffold(
        appBar: AppBar(title: const Text('首页')),
        body:listView,
    );
  }

  _initList(){
    if(queryCodeFlowBean == null || queryCodeFlowBean.locationInfoList == null){
      listView = ListView();
      return listView;
    }
    listView = ListView(
      children: queryCodeFlowBean.locationInfoList.map((item){
        return new ExpansionTile(
          onExpansionChanged:(bol){
            setState(() {
              queryCodeFlowBean.locationInfoList.forEach((element){
                element.openShow = false;
                if (element.code == item.code) {
                  element.openShow = bol;
                  print(element.code + " ===== "+item.openShow.toString());
                }
              });
            });
          },
          title: new Text(item.name),
//          backgroundColor: Colors.blueAccent.withOpacity(0.1),
          initiallyExpanded: item.openShow,
//          initiallyExpanded: false,
//              leading: Icon(
//                Icons.whatshot,
//                color: Colors.redAccent,
//              ),
          trailing: RotationTransition(
            turns: animation,
            child: const Icon(Icons.chevron_right),
          ),
//          onExpansionChanged: (bool){
//            _changeOpacity(bool);
//          },

          //控制闭合
//            https://blog.csdn.net/weixin_30726161/article/details/98277068
          children: item.codeInfoList.map((codeInfoItem){
            return new ExpansionTile(
                onExpansionChanged:(bol){
                  setState(() {
                    item.codeInfoList.forEach((element){
                      element.openShow = false;
                      if (element.code == codeInfoItem.code) {
                        element.openShow = bol;

                      }

                      print(element.code + " ===== "+element.openShow.toString());
                    });
                  });
                },
//                    title: const Text('更多精彩2'),
              title: new Padding(
                padding: EdgeInsets.all(15.0),
                child:new ListBody(
                  children: <Widget>[
                    new Text(codeInfoItem.code),
                  ],
                ),
              ),
//              backgroundColor: Colors.blueAccent.withOpacity(0.1),
              initiallyExpanded: codeInfoItem.openShow,
//              initiallyExpanded: false,
//                    leading: Text(''),
              trailing: RotationTransition(
                turns: animation,
                child: const Icon(Icons.chevron_right),
              ),

              children: codeInfoItem.flowDetailList.map((flowDetailItem){
                return new Padding(
                  padding: EdgeInsets.all(30.0),
                  child:new ListBody(
                    children: <Widget>[
                      new Text(flowDetailItem.srcSubOrgName + "-" + flowDetailItem.destSubOrgName),
                    ],
                  ),
                );
              }).toList(),
            );
          }).toList(),
        );
      }).toList(),
    );

    return listView;
  }
}