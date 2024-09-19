import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCreateScreen extends StatefulWidget {
  const QrCreateScreen({Key? key}) : super(key: key);

  @override
  State<QrCreateScreen> createState() => _QrCreateScreenState();
}

class _QrCreateScreenState extends State<QrCreateScreen> {
  final GlobalKey globalKey = GlobalKey();
  String qrData = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Generator"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            RepaintBoundary(
              key: globalKey,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: qrData.isEmpty ? const Text(
                    "Enter Data to Generate QR code",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  fontWeight: FontWeight.bold,),
                  )
                      : QrImageView(
                      data: qrData,
                    version: QrVersions.auto,
                    size: 200,
                  ),
              ),
            ),
            ),
            SizedBox(height: 50,),
            SizedBox(
              width:MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Date",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  setState(() {
                    qrData = value;
                  });
                },
              ),
            ),
          ]
        ),
      ),
    );
  }
}
