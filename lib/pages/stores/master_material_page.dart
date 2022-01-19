import 'package:e_inventory/helper/my_dummy.dart';
import 'package:e_inventory/theme.dart';
import 'package:e_inventory/widgets/pre_order_list.dart';
import 'package:flutter/material.dart';

class MasterMaterialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // label
    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
          bottom: 10
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Material', style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold
                )),
                Text('19 Materials', style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: reguler
                ),)
              ],
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(
                Icons.add,
                color: Colors.white
              ),
            )
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
            children: getOrderList().map((produk) => PreOrderList(produk: produk,)).toList(),
          ),
        )
      ],
    );
  }
}