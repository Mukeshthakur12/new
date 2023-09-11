import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/LoginScreen/login_otp.dart';
import 'package:development/Screens/LoginScreen/resend.dart';
import 'package:development/Screens/SignUpScreen/Otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/app_text.dart';
import '../../CustomWidgets/otp_custom_widget.dart';
import '../../Utils/app_color.dart';

class LoginOtpGetScreen extends StatelessWidget {
  get totalcash => 999;
  final TextEditingController _phoneNumberController = TextEditingController();
  String? _selectedCountryCode;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    final width= MediaQuery.of(context).size.width;
    final buttonwidth=width*0.99;

    return OtherScafold(
      title: '  ',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:Image.asset('assets/profile/logo.png',height: 26,),

            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    'Enter OTP',
                    style: th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 24),
                    textColor: appColorWhite,
                  ),
                  AppText(
                    'To the speed networking app',
                    style: th.bodySmall?.copyWith( fontWeight: FontWeight.w300),
                    textColor: appWhiteShade,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircularOtpInputField(controller: _phoneNumberController, length: 5, onChanged: (value){}),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText("Didn't receive the OTP?",style: th.bodyMedium,textColor: signuptext,),
                SizedBox(width: 10,),
                CustomCircularProgressBar(duration: 30,bColor: Color(0xff3AF384), onTimeout: (){
                  // PersistentNavBarNavigator.pushNewScreen(
                  //   context,
                  //   screen: LoginOtp(),
                  //   withNavBar: false,
                  //   pageTransitionAnimation:
                  //   PageTransitionAnimation.cupertino,
                  // );
                }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: buttonwidth,
                  height: 50,
                  child: CustomButtonApp.yellow(text: 'Verify OTP',
                    onPressed: (){
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: LoginOtp(),
                        withNavBar: false,
                        pageTransitionAnimation:
                        PageTransitionAnimation.cupertino,
                      );
                    }
                    , borderRadius: 56,)),
            ),
          ],
        ),
      ),
    );
  }
}