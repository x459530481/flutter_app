import 'package:flutter/material.dart';
import 'package:flutter_app/api/LoginAPI.dart';
import 'MainView.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginView>{
  TextEditingController _name = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Scaffold (
      appBar: new AppBar(
        title: new Text('登录'),
//        actions: <Widget>[
//          //titlebar 按钮
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
//        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _doLogin() {
    var nameStr = this._name.text;
    var passStr = this._pass.text;
    if(nameStr.isEmpty){
      showDialog(
          context: context,
          builder: (context) {
            return new AlertDialog(
              title: new Text("错误"),
              content: new Text("用户名不能为空！"),
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
    if(passStr.isEmpty){
      showDialog(
          context: context,
          builder: (context) {
            return new AlertDialog(
              title: new Text("错误"),
              content: new Text("密码不能为空！"),
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

    LoginAPI.getInstance().doLogin({ 'username': nameStr,"password":passStr,"vcaptcha":""}, (code,err,data){
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

      Navigator.of(context).push(
        new MaterialPageRoute(
          builder: (context) {
            return MainView();

          },
        ),
      );
    });
  }

  Widget _buildUserNameField() {
    return TextField(
//      focusNode: _focusPwdFieldNode,
      decoration: InputDecoration(
        labelText: '用户名',
        hintText: '输入你的用户名',
//        prefixIcon: Icon(Icons.arrow_drop_down),
      ),
//      obscureText: true,
      controller: this._name,
    );
  }

  Widget _buildPwdField() {
    return TextField(
//      focusNode: _focusPwdFieldNode,
      decoration: InputDecoration(
        labelText: '密码',
        hintText: '输入你的密码',
//        prefixIcon: Icon(Icons.arrow_drop_down),
      ),
      obscureText: true,
      controller: this._pass,
    );
  }

  Widget _buildSuggestions(){
    return Center(
          child: Column(
            //以下两个名词解释：https://blog.csdn.net/yuzhiqiang_1993/article/details/86496145
            //https://segmentfault.com/a/1190000019980474
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
//              SizedBox(
//                width: 200,
//                height: 200,
//                child: Image.memory(bytes),
//              ),
//              Text('RESULT  $barcode'),

              _buildUserNameField(),
              _buildPwdField(),
              RaisedButton(onPressed: _doLogin, child: Text("登录")),
            ],
          )
    );
  }
}
