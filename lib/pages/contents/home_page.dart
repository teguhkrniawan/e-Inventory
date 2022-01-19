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
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: defaultMargin
        ),
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
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
                  Text('17', style: whiteTextStyle.copyWith(
                    fontSize: 18
                  ),),
                  Text('Jan', style: whiteTextStyle,)
                ],
              ),
            ),
            Container(
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
                  Text('18', style: blueTextStyle.copyWith(
                    fontSize: 18
                  ),),
                  Text('Jan', style: blueTextStyle,)
                ],
              ),
            ),
             Container(
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
                  Text('19', style: blueTextStyle.copyWith(
                    fontSize: 18
                  ),),
                  Text('Jan', style: blueTextStyle,)
                ],
              ),
            ),
            Container(
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
                  Text('20', style: blueTextStyle.copyWith(
                    fontSize: 18
                  ),),
                  Text('Jan', style: blueTextStyle,)
                ],
              ),
            ),
            Container(
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
                  Text('21', style: blueTextStyle.copyWith(
                    fontSize: 18
                  ),),
                  Text('Jan', style: blueTextStyle,)
                ],
              ),
            ),
             Container(
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
                  Text('22', style: blueTextStyle.copyWith(
                    fontSize: 18
                  ),),
                  Text('Jan', style: blueTextStyle,)
                ],
              ),
            )
          ],
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
          'Pre Ordered', style: primaryTextStyle.copyWith(
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