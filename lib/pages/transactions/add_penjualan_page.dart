import 'package:flutter/material.dart';
import 'package:e_inventory/theme.dart';

class AddPenjualanPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     Widget header(){
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: whiteColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: blueColor,
        elevation: 2,
        centerTitle: true,
        title: Text('Add Penjualan'),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: whiteColor),
            onPressed: (){},
          )
        ],
      );
    }

    // nama input
    Widget namaInput(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Produk', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : Rainbow Cake',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: blueColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }

     // stok saat ini
    Widget currentStokInput(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jumlah yang dijual', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              style: primaryTextStyle,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : 90',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: blueColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }

     // nama input
    Widget satuanProdukInput(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tanggal Jual', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : 23/02/2022',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: blueColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }

      // nama input
    Widget biayaOrderInput(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Biaya Jual', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              keyboardType: TextInputType.number,
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : 230000',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: blueColor
                  )
                )
              ),
            )
          ],
        ),
      );
    }

    

    // content
    Widget content(){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin
        ),
        child: ListView(
            children: [
              namaInput(),
              satuanProdukInput(),
              currentStokInput(),
              biayaOrderInput(),
              // levelInput(),
            ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: header(),
      body: content(),
    );
  }
}