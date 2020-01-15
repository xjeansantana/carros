import 'package:carros/drawer_list.dart.dart';
import 'package:carros/pages/carro/carros_listview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: CarrosListView(),
      drawer: DrawerList(),
    );
  }
}