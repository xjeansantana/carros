import 'package:carros/drawer_list.dart.dart';
import 'package:carros/pages/carro/carros_page.dart';
import 'package:carros/utils/prefs.dart.dart';
import 'package:flutter/material.dart';

import 'carros_api.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin<HomePage> {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _initTabs();
  }

  Future _initTabs() async {
    _tabController = TabController(length: 3, vsync: this);

    _tabController.index = await Prefs.getInt("tabIdx");

    _tabController.addListener(() {
      print("Tab ${_tabController.index}");

      Prefs.setInt("tabIdx", _tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Clássicos"),
            Tab(text: "Espotivos"),
            Tab(text: "Luxo"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CarrosPage(TipoCarro.classicos),
          CarrosPage(TipoCarro.esportivos),
          CarrosPage(TipoCarro.luxo),
        ],
      ),
      drawer: DrawerList(),
    );
  }
}
