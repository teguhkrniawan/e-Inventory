import 'package:e_inventory/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

      // widget header
    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login', style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold
            ),),
            SizedBox(height: 2,),
            Text('Sign in untuk melanjutkan', style: thirdTextStyle.copyWith(
              fontSize: 14,
              fontWeight: reguler
            ))
          ],
        ),
      );
    }

    // widget input email
    Widget emailInput(){
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat Email',
              style: thirdTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: navyColor
                )
              ),
              child: Center(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icon_mail.svg', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(
                      child: TextFormField(
                        style: thirdTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: "Masukkan email",
                          hintStyle: primaryTextStyle
                        )
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // widget input password
    Widget passwordInput(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kata Sandi',
              style: thirdTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: navyColor
                )
              ),
              child: Center(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icon_lock.svg', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(
                      child: TextFormField(
                        style: thirdTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: "Masukkan kata sandi",
                          hintStyle: primaryTextStyle
                        )
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } 

    // widget button login
    Widget btnSignIn(){
      return Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/main-home');
            }, 
            style: TextButton.styleFrom(
              backgroundColor: navyColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
            child: Text('Sign In', style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium 
            ),)
          ),
        );
    }

    // widget footer
    Widget footer(){
      return Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Text('Powered By', style: thirdTextStyle,),
                Text('e-inventory 2022', style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: reguler
                ))
              ],
            )
          ),
        );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              btnSignIn(),
              Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
    
  }
}