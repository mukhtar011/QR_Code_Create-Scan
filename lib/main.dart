import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/qr_create_screen.dart';
import 'package:qr_scanner/screens/qr_scan_screen.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QR-Code Generator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: QrScanScreen(),
      //QrCreateScreen on replace above it will create QR_code
    );
  }
}

