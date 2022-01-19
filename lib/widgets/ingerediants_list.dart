import 'package:e_inventory/models/ingerediants_model.dart';
import 'package:e_inventory/theme.dart';
import 'package:flutter/material.dart';

class MaterialProductPage extends StatelessWidget {

  final IngrediantsModel ingrediants;
  MaterialProductPage({
    this.ingrediants
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20
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
              '${ingrediants.img}',
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
                Text('${ingrediants.name}', style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium
                ),),
                Text('Stok : ${ingrediants.stok}', style: secondaryTextStyle.copyWith(
                  fontWeight: bold
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}