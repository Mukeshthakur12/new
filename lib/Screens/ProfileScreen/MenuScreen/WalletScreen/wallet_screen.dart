import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/wallet_widget.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/ProfileScreen/MenuScreen/WalletScreen/transcation_history.dart';
import 'package:development/Screens/ProfileScreen/MenuScreen/WalletScreen/withdraw_money.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../CustomWidgets/app_text.dart';
import '../../../../CustomWidgets/custom_input_widget.dart';
import '../../../CommonScreens/back_button_scalfold.dart';
import '../../../ReferScreen/Component/button.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({super.key});
  TextEditingController _moneyController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    final width= MediaQuery.of(context).size.width;
    final buttonwidth=width*0.28;
    return BackButtonScalfold(
        title:'Wallet',
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoneyCard(onPressed: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: TransactionScreen(),
                    withNavBar: false,
                    pageTransitionAnimation:
                    PageTransitionAnimation.cupertino,
                  );
                }, totalcash: '1200', winning: '100', deposite: '2000', bonus: '100'),
                SizedBox(height: 20,),

                Container(
                  height: 48,
                  width: double.infinity,
                  child: CustomButtonApp(borderRadius:72,text: 'Withdraw',textColor: appColorGreen,backgroundColor: Colors.transparent,
                    borderColor: appColorGreen,
                    onPressed: (){
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: WidrwalMoney(),
                        withNavBar: false,
                        pageTransitionAnimation:
                        PageTransitionAnimation.cupertino,
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                RichText(
                  textAlign:TextAlign.center,
                  text:  TextSpan(
                    // style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Add Money to ',
                        style: th.titleLarge?.copyWith(fontSize: 20 ,color: appColorWhite,),
                      ),

                      TextSpan(
                        text: 'Tento Wallet',
                        style: th.titleLarge?.copyWith( fontSize: 20,color: appColorYellow,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                CustomInputText(
                  labelText: ' ',
                  hintText: 'Enter Money',
                  inputType: TextInputType.number,
                  controller: _moneyController, // Pass your TextEditingController here
                  onChanged: (value) {
                    // Handle the text change event here
                    print('Username changed: $value');
                  },
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppGredientButton(text: '100', onTap: (){},width: buttonwidth,height: 48,gradientColors: [Color(0xff240044).withOpacity(0.5),Color(0xffFFFFFF).withOpacity(0.5)],),
                    AppGredientButton(text: '200', onTap: (){},width: buttonwidth,height: 48,gradientColors: [Color(0xff240044).withOpacity(0.5),Color(0xffFFFFFF).withOpacity(0.5)],),
                    AppGredientButton(text: '300', onTap: (){},width: buttonwidth,height: 48,gradientColors: [Color(0xff240044).withOpacity(0.5),Color(0xffFFFFFF).withOpacity(0.5)],),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(76)),
                    border: Border.all(
                      color: Color(0xFFFFBC11).withOpacity(0.2), // Define your border color
                      width: 2, // Define the border width
                    ),
                  ),
                  child: InkWell(
                    hoverColor: Colors.transparent,
                      //splashColor: Colors.transparent,
                      highlightColor:Colors.transparent,
                      //focusNode:false,
                    onTap: (){
                      _showBottomSheet(context, 'Your coupon data here');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/widrwal/discount.svg'),
                            AppText('Coupons',style:th.labelLarge?.copyWith(fontSize: 18,),textColor: appColorWhite,),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white, // Customize the right arrow color here
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(height:48,child: mybutton(context,"Proceed to add ₹100",true,false),),


                SizedBox(height: 20,),

              ],
            ),
          ),
        ));
  }
  void _showBottomSheet(BuildContext context, String data) {
    var th = Theme.of(context).textTheme;
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: gameinfocard,
          width: double.infinity,
          height: 706,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText('Coupons',style:th.labelLarge?.copyWith(fontSize: 22,),textColor: appColorWhite,),
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/Game/c.png',height: 37,width: 37,)),
                ],
              ),
              SizedBox(height: 8,),
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return Stack(
                        children: [

                          Container(
                            margin: EdgeInsets.only(top: 6),
                            padding: EdgeInsets.symmetric(horizontal: defaultPadding*2,vertical: defaultPadding),
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: index % 2 == 0 ? appCardColor.withOpacity(0.5):appCardColor.withOpacity(0.3), // Alternate colors

                            ),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/widrwal/pytm.png'),
                                SizedBox(width: 15,),
                                Container(
                                  width: 1,
                                  color: appColorWhite,
                                ),
                                SizedBox(width: 15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText('₹100 Off',style:th.titleLarge?.copyWith(fontSize: 20,),textColor: appColorWhite,),
                                    AppText('Valid till 10 Feb 2024',style:th.bodySmall,textColor: appCoupontext,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              right: -10,
                              top: -1,
                              bottom: -3,
                              child: CircleAvatar(radius: 12,backgroundColor: gameinfocard,)),
                          Positioned(
                              left: -10,
                              top: -1,
                              bottom: -3,

                              child: CircleAvatar(radius: 12,backgroundColor: gameinfocard,)),
                        ],
                      );
                    }
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}
