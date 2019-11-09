//
//import 'package:flutter/cupertino.dart';
//
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
////void main() => runApp(MaterialApp(home: QRViewExample()));
//
//class QRViewExample extends StatefulWidget {
//  const QRViewExample({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  State<StatefulWidget> createState() => _QRViewExampleState();
//}
//
//class _QRViewExampleState extends State<QRViewExample> {
//  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//  var qrText = "";
//
//
//  String barcodeScanRes = FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", false, ScanMode.DEFAULT) as String;
//
//////  FlutterBarcodeScanner.g
////
////  FlutterBarcodeScanner.getBarcodeStreamReceiver("#ff6666", "Cancel", false, ScanMode.DEFAULT)
////      .listen((barcode) {
////  /// barcode to be used
////  });
////
//////  QRViewController controller;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Column(
//        children: <Widget>[
////          Expanded(
////            flex: 5,
////            child: QRView(
////              key: qrKey,
////              onQRViewCreated: _onQRViewCreated,
////            ),
////          ),
//          Expanded(
//            flex: 1,
//            child: Center(
//              child: Text('Scan result: $barcodeScanRes'),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
////  void _onQRViewCreated(QRViewController controller) {
////    this.controller = controller;
////    controller.scannedDataStream.listen((scanData) {
////      setState(() {
////        qrText = scanData;
////      });
////    });
////  }
////
////  @override
////  void dispose() {
////    controller?.dispose();
////    super.dispose();
////  }
//}