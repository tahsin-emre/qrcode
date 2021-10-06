import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ReadBarcode extends StatefulWidget {
  const ReadBarcode({Key? key}) : super(key: key);

  @override
  _ReadBarcodeState createState() => _ReadBarcodeState();
}

class _ReadBarcodeState extends State<ReadBarcode> {
  String barcode = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [button, barcodeText],
    );
  }

  Widget get button =>
      ElevatedButton(onPressed: () => scanBarcode(), child: const Text('Oku'));

  Widget get barcodeText => Text(barcode);

  Future<void> scanBarcode() async {
    try {
      final barcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'İptal',
        true,
        ScanMode.BARCODE,
      );

      if (!mounted) return;

      setState(() {
        this.barcode = barcode;
      });
    } on PlatformException {
      barcode = 'Failed to get platform version.';
    }
  }
}
