import 'package:flutter/material.dart';
import 'package:e_inventory/theme.dart';

class AddProductPage extends StatelessWidget {

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
        title: Text('Add Product'),
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
            Text('Stok saat ini', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              style: primaryTextStyle,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : 190',
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
            Text('Satuan Produk', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : Pcs',
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
    Widget levelInput(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Level material', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              keyboardType: TextInputType.number,
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : 0 atau 1',
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
            Text('Biaya Order + Ongkir', style: primaryTextStyle.copyWith(
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

     // nama input
    Widget biayaSimpanInput(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Biaya Simpan', style: primaryTextStyle.copyWith(
              fontSize: 13,
              fontWeight: semibold
            ),),
            TextFormField(
              keyboardType: TextInputType.number,
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: secondaryTextStyle,
                hintText: 'ex : 130000',
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
              biayaSimpanInput(),
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