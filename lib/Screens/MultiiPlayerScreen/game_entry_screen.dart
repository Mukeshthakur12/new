import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/entry_fee_card.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'searching_game.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class GameEntryScreen extends StatelessWidget {
  final String imgurl;
  const GameEntryScreen({super.key,required this.imgurl});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return  Scaffold(

      appBar: AppBar(toolbarHeight: 0,),
      body: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(imgurl,height: 430,fit: BoxFit.fill,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                  child: Column(
                children: [
                  SizedBox(height: 350,),
                  Container(
                      child: EntryFeeCard(onPressed: (){},)),
                  SizedBox(height: 50,),
                  CustomAppButton(onTap: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: SearchingPlayer(),
                      withNavBar: false,
                      pageTransitionAnimation:
                      PageTransitionAnimation.cupertino,
                    );
                  },bgColor: appColorGreen,height: 50,
                    textStyle: th.bodyLarge?.copyWith(fontSize: 26,fontWeight: FontWeight.w900),
                    title: 'Play',)
                ],
        ),
      ),
                Positioned(
                    top: 15,
                    left: 15,
                    child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,color: appColorWhite,size: 28,))),

              ],
            ),
          ),
    );
  }
}
