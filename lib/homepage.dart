import 'package:flutter/material.dart';
import 'package:qrcode/create_barcode.dart';
import 'package:qrcode/read_barcode.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar,
      body: buildBody,
    );
  }

  AppBar get buildAppBar => AppBar(
        centerTitle: true,
        title: const Text('Barkod Okuyucu ve Oluşturucu'),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.photo_camera_rounded),
              text: 'Barkod Oku',
            ),
            Tab(
              icon: Icon(Icons.qr_code),
              text: 'Barkod Oluştur',
            )
          ],
        ),
      );

  Widget get buildBody => TabBarView(
      controller: tabController,
      children: const [ReadBarcode(), CreateBarcode()]);
}
