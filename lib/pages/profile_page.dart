import 'package:flutter/material.dart';
import 'package:e_inventory/theme.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // header
    Widget header(){
      return AppBar(
        backgroundColor: greyColor2,
        centerTitle: true,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/avatar.PNG',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Halo, Sabrino', style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold
                      )),
                      Text('Owner', style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: reguler
                      ),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/icon_logout.png',
                    width: 20,
                  ),
                )
              ],
            ),
          )
        ),
        automaticallyImplyLeading: false,
      );
    }

    // Menu Item
    Widget menuItem(String text){
      return Container(
        margin: EdgeInsetsDirectional.only(
          top:16
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: secondaryTextStyle.copyWith(
              fontSize: 18
            ),),
            Icon(Icons.chevron_right, color: navyColor,)
          ],
        ),
      );
    }

    // contents menu list item
    Widget content(){
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          // decoration: BoxDecoration(
          //   color: whiteColor
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Account', style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semibold
              ),),
              SizedBox(height: 14,),
              GestureDetector(
                onTap: (){
                  // Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem('Edit Profile')
              ),
              menuItem('FAQ'),
              menuItem('About Apps'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          header(),
          content()
        ],
      ),
    );
  }
}