import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/phone_input_field.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/SignUpScreen/otp_get_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/Dropdown.dart';
import '../../CustomWidgets/app_text.dart';
import '../../Utils/app_color.dart';
import 'Otp.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
      title: ' ',
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
                    'Welcome!',
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
              child: Column(
                children: [
                  AppText(
                      "Signup",
                    style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w300),
                    textColor: appColorYellow,
                  ),
                  SizedBox(height: 3,),
                  Container(
                    width: 62,
                    height: 1,
                    color: appColorYellow,
                  )
                ],
              ),
            ),
            CustomSignTextField(controller: _phoneNumberController,
                hintText: 'Enter Mobile Number *', flagImagePath: 'assets/Signup/flag.png'),
           // SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 90,
              child: Row(
                children: [
                  AppText('Invite code',
                    style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w500),
                    textColor: appColorWhite,),
                  SizedBox(width:12),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: gameinfocard,

                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Code',
                          hintStyle: TextStyle(color: appColorWhite),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.copy,color: appColorWhite,size: 18,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,),
              child: Row(
                children: [
                  CustomDropdownWidget(
                    items: ['Option 1', 'Option 2', 'Option 3'],
                    defaultIndex: 1, // Set the default selected index (0, 1, or 2)
                    onItemSelected: (selectedIndex) {
                      print('Selected item index: $selectedIndex');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: appCardColor,
                    activeColor: Colors.green,
                    hoverColor: appSuccessShade,
                    value: isChecked,
                    onChanged: (bool? value) {
                      // Update the isChecked value when the checkbox is tapped
                      // This will activate and deactivate the checkbox
                      if (value != null) {
                        setState(() {
                          isChecked = value;
                        });
                      }
                    },
                  ),

                  AppText(
                    "I certify that I am above 18 years",
                    style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w700),
                    textColor: sharewhitetext,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
                width: buttonwidth,
                height: 50,
                child: CustomButtonApp.yellow(text: 'Signup',
                  onPressed: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: OtpGetScreen(),
                      withNavBar: false,
                      pageTransitionAnimation:
                      PageTransitionAnimation.cupertino,
                    );
                  }
                  , borderRadius: 56,)),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 10),
              child: Center(
                child: AppText(
                  "Or Signup with",
                  style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w500),
                  textColor: sharewhitetext,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 10),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.5),
                  border: Border.all(
                    color: walletcard, // Replace this with your desired border color
                    width: 2, // Adjust the width of the border as needed
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Signup/google.svg'),
                    SizedBox(width: 3,),
                    AppText(
                      "Google   ",
                      style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
                      textColor: appColorWhite,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 10),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.5),
                  border: Border.all(
                    color: walletcard, // Replace this with your desired border color
                    width: 2, // Adjust the width of the border as needed
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Signup/fb.svg'),
                    SizedBox(width: 3,),
                    AppText(
                      "Facebook",
                      style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
                      textColor: appColorWhite,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 10),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.5),
                  border: Border.all(
                    color: walletcard, // Replace this with your desired border color
                    width: 2, // Adjust the width of the border as needed
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Signup/insta.svg'),
                    SizedBox(width: 3,),
                    AppText(
                      "Instagram",
                      style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
                      textColor: appColorWhite,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}