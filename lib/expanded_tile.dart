import 'package:flutter/material.dart';

//void main() {
//  runApp(new MaterialApp(
//    home: MyApp(),
//  ));
//}

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> with SingleTickerProviderStateMixin {
  Animation animation;
  Animation animation2;
  AnimationController animationController;
  AnimationController animationController2;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
//    animationController2 = new AnimationController(
//        vsync: this, duration: Duration(milliseconds: 200));
    animation = new Tween(begin: 0.0, end: 0.5).animate(animationController);
//    animation2 = new Tween(begin: 0.0, end: 0.5).animate(animationController2);
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

//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//        appBar: AppBar(title: const Text('ExpansionTile')),
//        body: ListView(children: <Widget>[
//          ExpansionTile(
//              title: const Text('更多精彩'),
//              backgroundColor: Colors.blueAccent.withOpacity(0.1),
//              initiallyExpanded: true,
//              leading: Icon(
//                Icons.whatshot,
//                color: Colors.redAccent,
//              ),
//              trailing: RotationTransition(
//                turns: animation,
//                child: const Icon(Icons.chevron_right),
//              ),
//              onExpansionChanged: (bool){
//                _changeOpacity(bool);
//              },
//              children: <Widget>[
//                ExpansionTile(
//                    title: const Text('更多精彩2'),
//                    backgroundColor: Colors.blueAccent.withOpacity(0.1),
//                    initiallyExpanded: true,
//                    leading: Icon(
//                      Icons.whatshot,
//                      color: Colors.redAccent,
//                    ),
//                    trailing: RotationTransition(
//                      turns: animation,
//                      child: const Icon(Icons.chevron_right),
//                    ),
//                    onExpansionChanged: (bool){
//                      _changeOpacity2(bool);
//                    },
//                    children: <Widget>[
//                      Container(
//                        decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(3.0),
//                            color: Colors.blueAccent),
//                        height: 100.0,
//                        margin: EdgeInsets.all(5.0),
//                      ),
//                      Container(
//                        decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(3.0),
//                            color: Colors.redAccent),
//                        height: 100.0,
//                        margin: EdgeInsets.all(5.0),
//                      ),
//                  ]),
////                Container(
////                  decoration: BoxDecoration(
////                      borderRadius: BorderRadius.circular(3.0),
////                      color: Colors.blueAccent),
////                  height: 100.0,
////                  margin: EdgeInsets.all(5.0),
////                ),
////                Container(
////                  decoration: BoxDecoration(
////                      borderRadius: BorderRadius.circular(3.0),
////                      color: Colors.redAccent),
////                  height: 100.0,
////                  margin: EdgeInsets.all(5.0),
////                ),
//              ])
//        ]));
//  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text('ExpansionTile')),
        body: ListView(children: <Widget>[
          ExpansionTile(
              title: const Text('更多精彩'),
              backgroundColor: Colors.blueAccent.withOpacity(0.1),
              initiallyExpanded: true,
//              leading: Icon(
//                Icons.whatshot,
//                color: Colors.redAccent,
//              ),
              trailing: RotationTransition(
                turns: animation,
                child: const Icon(Icons.chevron_right),
              ),
              onExpansionChanged: (bool){
                _changeOpacity(bool);
              },

              children: <Widget>[
                ExpansionTile(
//                    title: const Text('更多精彩2'),
                    title: new Padding(
                      padding: EdgeInsets.all(15.0),
                      child:new ListBody(
                        children: <Widget>[
                          new Text('更多精彩2'),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.blueAccent.withOpacity(0.1),
                    initiallyExpanded: true,
//                    leading: Text(''),
                    trailing: RotationTransition(
                      turns: animation,
                      child: const Icon(Icons.chevron_right),
                    ),
                    onExpansionChanged: (bool){
                      _changeOpacity2(bool);
                    },
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: Colors.blueAccent),
                        height: 100.0,
                        margin: EdgeInsets.all(5.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: Colors.redAccent),
                        height: 100.0,
                        margin: EdgeInsets.all(5.0),
                      ),
                    ]),
              ])
        ]));
  }
}