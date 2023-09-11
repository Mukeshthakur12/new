import 'package:development/Screens/ProfileScreen/MenuScreen/WalletScreen/payment_succesful.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../CustomWidgets/app_text.dart';
import '../../../ReferScreen/Component/button.dart';
import '../../profile_screen.dart';

class WithDrawalAmountScreen extends StatefulWidget {
  @override
  _WithDrawalAmountScreenState createState() => _WithDrawalAmountScreenState();
}

class _WithDrawalAmountScreenState extends State<WithDrawalAmountScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _panCardController = TextEditingController();
  TextEditingController _accountNumberController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  @override
  void dispose() {
    _panCardController.dispose();
    _accountNumberController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText('Withdraw',style: th.titleLarge,textColor: appColorWhite,),
            AppText("₹1422",style: th.titleLarge,textColor:appColorGreen ,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText('KYC Verification',style: th.bodyLarge,textColor: appColorWhite,),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 12),
              child: Container(
                width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                height:159, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF).withOpacity(0.5),
                      Color(0xff240044).withOpacity(0.5),
                    ],
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: gameinfocard,

                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12,top: 8,bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText('PAN Card',style: th.bodyMedium?.copyWith(fontSize: 12,fontWeight: FontWeight.w600),textColor: appColorWhite,),
                        SizedBox(height: 8,),

                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: appPrimaryColor
                          ),
                          padding: EdgeInsets.only(left: defaultPadding,right:defaultPadding,),
                          child: TextFormField(
                            controller: _panCardController,
                            textAlignVertical:TextAlignVertical(y: 0.0),

                            decoration: InputDecoration(
                              // labelText: 'PAN Card',
                              hintText: 'PAN Card Number',
                              hintStyle: th.bodySmall?.copyWith(
                                  color: appColorWhite
                              ),
                              border: InputBorder.none,
                              // border: InputBorder.none,

                              suffixIcon:Transform.scale(
                                scale: 0.5,
                                child:SvgPicture.asset('assets/widrwal/menu.svg',
                                    color: Colors.white),
                              ),
                            ),
                            style: th.bodySmall?.copyWith(
                                color: appColorWhite
                            ),

                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: appPrimaryColor
                          ),
                          //height: 52,
                          //padding: EdgeInsets.only(left: defaultPadding,right:defaultPadding,),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: defaultPadding),
                                  child: Text("Upload Image",style: th.bodySmall?.copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                  child: Container(
                                    height: 48,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight:Radius.circular(16),bottomRight:Radius.circular(16)),
                                      color: Color(0xff3AF384),
                                    ),
                                    //child: Padding(
                                      //padding: const EdgeInsets.only(right: defaultPadding),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset('assets/widrwal/export.svg',
                                              color: gameinfocard,height: 14,width: 14,),
                                          SizedBox(width: 6,),
                                          Text("Upload",style: th.bodyMedium?.copyWith(color:gameinfocard,fontWeight: FontWeight.w600,fontSize: 12),
                                          ),
                                        ],
                                      //),
                                    ),
                                  )
                              )
                            ],
                          )
                        ),

                      ],
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 12),
              child: Container(
                width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                height:159, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF).withOpacity(0.5),
                      Color(0xff240044).withOpacity(0.5),
                    ],
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: gameinfocard,

                  ),
                  alignment: Alignment.center,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12,top: 8,bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText('Aadhar Card',style: th.bodyMedium?.copyWith(fontSize: 12,fontWeight: FontWeight.w600),textColor: appColorWhite,),
                          SizedBox(height: 8,),

                          Container(
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: appPrimaryColor
                            ),
                            padding: EdgeInsets.only(left: 8,right:8,),
                            child: Center(
                              child: TextFormField(
                                controller: _panCardController,
                                textAlignVertical:TextAlignVertical(y: 0.0),

                                decoration: InputDecoration(
                                  // labelText: 'PAN Card',
                                  hintText: 'Aadhar Card Number',
                                  hintStyle: th.bodySmall?.copyWith(
                                      color: appColorWhite
                                  ),
                                  border: InputBorder.none,
                                  // border: InputBorder.none,

                                  suffixIcon:Transform.scale(
                                    scale: 0.5,
                                    child:SvgPicture.asset('assets/widrwal/menu.svg', color: Colors.white),
                                  ),
                                ),
                                style: th.bodySmall?.copyWith(
                                    color: appColorWhite
                                ),

                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: appPrimaryColor
                              ),
                              //height: 52,
                              //padding: EdgeInsets.only(left: defaultPadding,right:defaultPadding,),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: defaultPadding),
                                      child: Text("Upload Image",style: th.bodySmall?.copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight:Radius.circular(16),bottomRight:Radius.circular(16)),
                                          color: Color(0xff3AF384),
                                        ),
                                        //child: Padding(
                                        //padding: const EdgeInsets.only(right: defaultPadding),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset('assets/widrwal/export.svg',
                                              color: gameinfocard,height: 14,width: 14,),
                                            SizedBox(width: 6,),
                                            Text("Upload",style: th.bodyMedium?.copyWith(color:gameinfocard,fontWeight: FontWeight.w600,fontSize: 12),
                                            ),
                                          ],
                                          //),
                                        ),
                                      )
                                  )
                                ],
                              )
                          ),

                        ],
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText('Account Number',style: th.bodyLarge,textColor: appColorWhite,),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 12),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: appPrimaryColor
                      ),
                      height: 52,
                      padding: EdgeInsets.only(left: defaultPadding,right:defaultPadding,),
                      child: TextFormField(
                        controller: _panCardController,
                        textAlignVertical:TextAlignVertical(y: 0.0),

                        decoration: InputDecoration(
                          // labelText: 'PAN Card',

                          hintText: 'Account Number',
                          hintStyle: th.bodySmall?.copyWith(
                              color: appColorWhite
                          ),
                         border: InputBorder.none,
                          // border: InputBorder.none,

                          suffixIcon:Transform.scale(
                            scale: 0.5,
                            child:SvgPicture.asset('assets/widrwal/bank.svg',height: 15,width: 15,
                                color: Colors.white),),
                        ),
                        style: th.bodySmall?.copyWith(
                            color: appColorWhite
                        ),

                      ),
                    ),
                    SizedBox(height: 12.0),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: appPrimaryColor
                      ),
                      height: 52,
                      padding: EdgeInsets.only(left: defaultPadding,right:defaultPadding,),
                      child: TextFormField(
                        controller: _panCardController,
                        textAlignVertical:TextAlignVertical(y: 0.0),

                        decoration: InputDecoration(
                          // labelText: 'PAN Card',

                          hintText: 'Re-Enter Account Number',
                          hintStyle: th.bodySmall?.copyWith(
                              color: appColorWhite
                          ),
                          border: InputBorder.none,
                          // border: InputBorder.none,

                          suffixIcon:Transform.scale(
                            scale: 0.5,
                            child:SvgPicture.asset('assets/widrwal/bank.svg',height: 15,width: 15,
                                color: Colors.white),),
                        ),
                        style: th.bodySmall?.copyWith(
                            color: appColorWhite
                        ),

                      ),
                    ),

                    SizedBox(height: 12.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: appPrimaryColor
                      ),
                      height: 52,
                      padding: EdgeInsets.only(left: defaultPadding,right:defaultPadding,),
                      child: TextFormField(
                        controller: _amountController,
                        textAlignVertical:TextAlignVertical(y: 0.0),

                        keyboardType: TextInputType.number,
                        // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                          hintText: 'UPI ID',
                          hintStyle: th.bodySmall?.copyWith(
                              color: appColorWhite
                          ),
                         border: InputBorder.none,

                          suffixIcon: Transform.scale(
                            scale: 0.5,
                            child:SvgPicture.asset('assets/widrwal/menu.svg', color: Colors.white),
                          ),
                        ),
                        style: th.bodySmall?.copyWith(
                            color: appColorWhite
                        ),

                      ),
                    ),
                    SizedBox(height: 48.0),
                    gedientbutton(context,"₹1422 Withdraw",                     onTap:  () {
                      if (_formKey.currentState!.validate()) {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: PaymentSucessfull(),
                          withNavBar: false,
                          pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                        );
                      }
                    },)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

