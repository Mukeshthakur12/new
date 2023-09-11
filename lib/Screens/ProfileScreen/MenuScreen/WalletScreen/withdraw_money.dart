import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/custom_input_widget.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/ProfileScreen/MenuScreen/WalletScreen/transcation_history.dart';
import 'package:development/Screens/ProfileScreen/MenuScreen/WalletScreen/withdrawal_amount_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../CustomWidgets/app_text.dart';
import '../../../../Utils/app_color.dart';
import '../../../CommonScreens/back_button_scalfold.dart';
import '../../../ReferScreen/Component/button.dart';

class WidrwalMoney extends StatelessWidget {
  get totalcash => 699;
  TextEditingController _moneyController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    final width= MediaQuery.of(context).size.width;
    final buttonwidth=width*0.45;
    return BackButtonScalfold(

      title: 'Withdraw Money',
      child: Container(
        color:Colors.transparent ,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Expanded(
                      flex:1,
                      child: Container(
                        height: 169,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF311838),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/widrwal/winning.svg'),
                            SizedBox(height: 5,),
                            AppText('Total Winnings ',style: th.bodySmall,textColor: appWhiteShade,),
                            //SizedBox(height: ,),
                            AppText('₹${totalcash.toString()}',style: th.titleLarge?.copyWith(
                                fontSize: 24,fontWeight: FontWeight.w900
                            ),textColor: appWhiteShade,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Expanded(
                      flex:1,
                      child: Container(
                        height: 169,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF311838),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/widrwal/balance.svg'),
                            SizedBox(height: 5,),
                            AppText('Total Balance',style: th.bodySmall,textColor: appWhiteShade,),
                            //SizedBox(height: ,),
                            AppText('₹${totalcash.toString()}',style: th.titleLarge?.copyWith(
                                fontSize: 24,fontWeight: FontWeight.w900
                            ),textColor: appWhiteShade,),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: AppText('*Only Winnings can be withdrawn',style: th.bodySmall?.copyWith(fontWeight: FontWeight.w500),textColor: appColorWhite,),
              ),
              SizedBox(height: 12,),
              Padding(
                padding:  EdgeInsets.only(left:12.0,right:12,top: 12),
                child: AppText('Enter Amount to Withdraw in Rs',style: th.titleLarge?.copyWith(fontSize: 20,fontWeight: FontWeight.w700),textColor: appColorWhite,),
              ),
              Padding(
                padding:  EdgeInsets.only(left:12.0,right:12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText('(Min 50/- Max 250/- in multiples of 50)',style: th.bodySmall?.copyWith(fontWeight: FontWeight.w300),textColor: sharewhitetext,),
                    SizedBox(width: 4,),
                    Icon(CupertinoIcons.question_circle,size: 16,
                      color: appWhiteShade,),
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: CustomInputText(labelText: 'Money', hintText: 'Money', controller: _moneyController),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:50,
                      width: buttonwidth,
                      child: CustomButtonApp(borderRadius:72,text: 'Transactions',textColor: appColorGreen,backgroundColor: Colors.transparent,
                          borderColor: appColorGreen,
                        onPressed: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: TransactionScreen(),
                            withNavBar: false,
                            pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                          );
                        },
                      ),
                    ),
                    gedientbutton(context,"Withdraw",                      onTap:  (){
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: WithDrawalAmountScreen(),
                        withNavBar: false,
                        pageTransitionAnimation:
                        PageTransitionAnimation.cupertino,
                      );
                    },)

                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }

}