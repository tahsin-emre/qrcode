import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar,
      body: buildBody,
    );
  }

  get buildAppBar => AppBar(
        centerTitle: true,
        title: const Text('Barkod Okuyucu ve Oluşturucu'),
      );
  get buildBody => const Center();
}
