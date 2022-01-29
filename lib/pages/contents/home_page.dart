import 'package:e_inventory/theme.dart';
import 'package:e_inventory/widgets/pre_order_list.dart';
import 'package:e_inventory/helper/my_dummy.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // widget header
    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Selamat Datang', style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semibold
                  ),),
                  Text('Sabrino Raharjo', style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                  ),)
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/profile');
              },
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/avatar.PNG'))
                ),
              ),
            )
          ],
        ),
      );
    }

    // widget tanggal 
    Widget tanggal(){
      return Center(
        child: Container(
          margin: EdgeInsetsDirectional.only(
            top: defaultMargin
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90,
                margin: EdgeInsets.only(
                  right: 16
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10
                  ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: whiteColor,
                  border: Border.all(
                    color: blueColor
                  )
                ),
                child: Column(
                  children: [
                    Icon(Icons.skip_previous, color: blueColor,),
                    Text('Kemarin', style: blueTextStyle,)
                  ],
                ),
              ),
              Container(
                width: 90,
                margin: EdgeInsets.only(
                  right: 16
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10
                  ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: blueColor
                ),
                child: Column(
                  children: [
                    Icon(Icons.today, color: whiteColor,),
                    Text('Hari ini', style: whiteTextStyle,)
                  ],
                ),
              ),
              Container(
                width: 90,
                margin: EdgeInsets.only(
                  right: 16
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10
                  ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: whiteColor,
                  border: Border.all(
                    color: blueColor
                  )
                ),
                child: Column(
                  children: [
                    Icon(Icons.skip_next, color: blueColor,),
                    Text('Besok', style: blueTextStyle,)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    // widget label title
    Widget labelTitle(){
      return Container(
        margin: EdgeInsets.only(
           top: defaultMargin,
           left: defaultMargin,
           right: defaultMargin
        ),
        child: Text(
          'Produksi Hari Ini', style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold
          )
        ),
      );
    }

    return ListView(  
      children: [
        header(),
        tanggal(),
        labelTitle(),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10
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