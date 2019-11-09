//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:zxing/zxing.dart';
//
////void main() => runApp(new MyApp());
//
//class Scanner extends StatefulWidget {
//  @override
//  ScannerState createState() => new ScannerState();
//}
//
//class ScannerState extends State<Scanner> {
//  List<String> _barcodeList = List()..add("Unknow");
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Zxing-flutter example app'),
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text('barcode: $_barcodeList\n'),
//              RaisedButton(
//                onPressed: () {
//                  _barcodeList.clear();
//                  try {
//                    Zxing.scan(isBeep: false, isContinuous: true).listen(
//                          (data) {
//                        print("client scan result:" + data);
//                        Zxing.showMessage(
//                          content: 'barcode from flutter:$data',
//                          isError: true,
//                        );
//                        setState(() => _barcodeList.add(data));
//                      },
//                    );
//                  } on PlatformException {
//                    _barcodeList = List()..add('Failed to get barcode.');
//                  }
//                },
//                child: Text('scan'),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}