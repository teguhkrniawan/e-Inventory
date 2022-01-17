/**
 * Merupakan parent dari page pertama
 * yang akan melakukan handle routing
 * menu-menu utama
 */

import 'package:e_inventory/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuParentPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    // floating action button
    Widget penjualanFLoatingBtn(){
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: blueColor,
        child: SvgPicture.asset(
          'assets/icon_store.svg',
          width: 20,
          color: whiteColor,
        ),
      );
    }

    // custom body navigation
    Widget customNavBottom(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        ),
        child: BottomAppBar(
          color: navyColor,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: BottomNavigationBar(
            backgroundColor: navyColor,
            type: BottomNavigationBarType.fixed,
            onTap: (value){},
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10
                  ),
                  child: SvgPicture.asset(
                    'assets/icon_homes.svg',
                    width: 20,
                    color: whiteColor
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10
                  ),
                  child: SvgPicture.asset(
                    'assets/icon_wallet.svg',
                    width: 20,
                    color: whiteColor
                  ),
                ),
                label: '',
              ),  
            ],
          )
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: penjualanFLoatingBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customNavBottom(),
      body: SafeArea(
        child: Center(),
      )
    );
  }
}