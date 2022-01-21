import 'package:e_inventory/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:e_inventory/theme.dart';

class DetailMrpPage extends StatelessWidget {

  final ProductModel produk;
  DetailMrpPage({
    this.produk
  });

  @override
  Widget build(BuildContext context) {

    // widget header
    Widget header(){
      return AppBar(
        backgroundColor: blueColor,
        elevation: 2,
        centerTitle: true,
        title: Text('${produk.name}'),
      );
    }

    // widget head content
    Widget headeContent(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Produk', style: secondaryTextStyle.copyWith(
              fontSize: 12
            )),
            Text('${produk.name}', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            )),
          ],
        ),
      );
    }

    // widget eoq dan poq
    Widget eoqDanPoq(){
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('EOQ', style: secondaryTextStyle.copyWith(
                  fontSize: 12
                )),
                Text('190', style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold
                )),
              ],
            ),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('POQ', style: secondaryTextStyle.copyWith(
                  fontSize: 12
                )),
                Text('2', style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold
                )),
              ],
            )
          ],
        ),
      );
    }

    // widget list produk
    Widget list1(){
        return Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30
          ),
          padding: EdgeInsets.only(
            top: 10,
            left: 12,
            bottom: 14,
            right: 20
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: greyColor2
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/margarin.PNG',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mentega', style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium
                    ),),
                    Text('EOQ : 120, POQ : 2', style: secondaryTextStyle.copyWith(
                      fontWeight: bold
                    ),)
                  ],
                ),
              )
            ],
          ),
        );
    }

    Widget list2(){
        return Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30
          ),
          padding: EdgeInsets.only(
            top: 10,
            left: 12,
            bottom: 14,
            right: 20
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: greyColor2
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/tepung.PNG',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tepung', style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium
                    ),),
                    Text('EOQ : 112, POQ : 2', style: secondaryTextStyle.copyWith(
                      fontWeight: bold
                    ),)
                  ],
                ),
              )
            ],
          ),
        );
    }

    return Scaffold(
      appBar: header(),
      body: ListView(
        children: [
          headeContent(),
          eoqDanPoq(),
          Divider(
            color: greyColor2,
            thickness: 2,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30
            ),
            child: Text('Ingrediants EOQ & POQ', style: secondaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            ),),
          ),
          list1(),
          list2(),
        ],
      ),
    );
  }
}