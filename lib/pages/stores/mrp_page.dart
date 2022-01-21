import 'package:e_inventory/helper/my_dummy.dart';
import 'package:e_inventory/theme.dart';
import 'package:e_inventory/widgets/product_mrp_list.dart';
import 'package:flutter/material.dart';

class MrpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // widget header
    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
          bottom: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ketahui nilai EOQ dan POQ', style: primaryTextStyle.copyWith(
              fontSize: 16
            ),),
            Text('dari produk dan material kamu', style: thirdTextStyle.copyWith(
              fontSize: 12
            ),)
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getOrderList().map((produk) => ProductMrpList(produk: produk,)).toList()
          )
        )
      ],      
    );
  }
}