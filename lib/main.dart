import 'package:flutter/material.dart';
import 'package:qrcode/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Barkod Okuyucu',
      home: HomePage(),
    );
  }
}
