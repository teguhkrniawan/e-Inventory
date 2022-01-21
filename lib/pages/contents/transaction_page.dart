import 'package:e_inventory/pages/transactions/pembelian_page.dart';
import 'package:e_inventory/pages/transactions/penjualan_page.dart';
import 'package:flutter/material.dart';
import 'package:e_inventory/theme.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          title: Text('Store Inventory'),
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Penjualan',),
              Tab(text: 'Pembelian',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PenjualanPage(),
            PembelianPage(),
          ],
        ),
      )
    );
  }
}