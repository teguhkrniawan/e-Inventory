import 'package:e_inventory/pages/stores/product_master_page.dart';
import 'package:e_inventory/pages/stores/master_material_page.dart';
import 'package:e_inventory/theme.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> with SingleTickerProviderStateMixin{

 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          title: Text('Store Inventory'),
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Material',),
              Tab(text: 'Product',),
              Tab(text: 'MRP',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MasterMaterialPage(),
            ProductMasterPage(),
            Center(child: Text('Ini tab 3'),)
          ],
        ),
      )
    );
  }
}