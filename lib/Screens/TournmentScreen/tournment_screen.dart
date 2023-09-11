import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/CommonScreens/game_scafold.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/ContesEntryCard.dart';
import '../../CustomWidgets/tournment_card_withimg.dart';
import '../QuizScreen/quizScreen.dart';

class TournmentScreen extends StatelessWidget {
  const TournmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GameScafold(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        height: MediaQuery.of(context).size.height*0.74 ,
        child: SingleChildScrollView(
          child: Column(
            children: [

            TournmentCardWithImg(priceMoney: '30000',
            imgurl:'assets/GameButton/fruit.png',
            timeRemaining: Duration(minutes: 10),
            entriesLeft: 5,
            totalEntries: 30,
            entryMoney: 20,
            onEntryButtonPressed: (){},
            gradientColors: [Color(0xff311938), Color(0xff130025)],),
              TournmentCardWithImg(priceMoney: '20000',
                imgurl:'assets/GameButton/fruit.png',
                timeRemaining: Duration(minutes: 10),
                entriesLeft: 5,
                totalEntries: 30,
                entryMoney: 20,
                onEntryButtonPressed: (){

                },
                gradientColors: [Color(0xff311938), Color(0xff130025)],),
            TournmentCardWithImg(priceMoney: '30000',
            imgurl:'assets/GameButton/fruit.png',
            timeRemaining: Duration(minutes: 10),
            entriesLeft: 5,
            totalEntries: 30,
            entryMoney: 20,
            onEntryButtonPressed: (){},
              gradientColors: [Color(0xff311938), Color(0xff130025)],),
            TournmentCardWithImg(priceMoney: '30000',
            imgurl:'assets/GameButton/fruit.png',
            timeRemaining: Duration(minutes: 10),
            entriesLeft: 5,
            totalEntries: 30,
            entryMoney: 20,
            onEntryButtonPressed: (){},
              gradientColors: [Color(0xff311938), Color(0xff130025)],),
            ],
          ),
        )

        // ListView.builder(
        //   scrollDirection: Axis.vertical,
        //   itemCount: 12,
        //   itemBuilder: (context,index) {
        //     return TournmentCardWithImg(priceMoney: '30000',
        //         imgurl:'assets/GameButton/fruit.png',
        //         timeRemaining: Duration(minutes: 10),
        //         entriesLeft: 5,
        //         totalEntries: 30,
        //         entryMoney: 20,
        //         onEntryButtonPressed: (){},
        //       gradientColors: [Color(0xFFC52020), Color(0xFF5B0506)],);
        //
        //   },
        // ),

      ),
    );
  }
}
