import 'package:flutter/material.dart';
import 'package:e_inventory/theme.dart';

class PenjualanPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // widget label
    Widget label(String text){
      return Container(
        margin : EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Text(text, style: secondaryTextStyle.copyWith(
          fontSize: 12
        ),),
      );
    }

    // widget list
    Widget list(){
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
                  'assets/avocado_cake.PNG',
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
                    Text('Avocado Cake', style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium
                    ),),
                    Text('qty : 60 Pcs', style: secondaryTextStyle.copyWith(
                      fontWeight: bold
                    ),)
                  ],
                ),
              )
            ],
          ),
      );
    }

    // button tambah produk
    Widget btnTambahPembelian(){
      return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/add-penjualan');
        },
        child: Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
          ),
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Text('Tambah', style: whiteTextStyle))
        ),
      ) ;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            btnTambahPembelian(),
            label('22 Januari 2022'),
            list(),
            list(),
            list(),
            label('19 Januari 2022'),
            list(),
            list(),
            list(),
            list(),
            label('17 Januari 2022'),
            list(),
            list(),
            list(),
          ],
        )
      ),
    );
  }
}