import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/CommonScreens/game_scafold.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/ContesEntryCard.dart';

class Tournment extends StatelessWidget {
  const Tournment({super.key});

  @override
  Widget build(BuildContext context) {
    return GameScafold(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
        height: 700,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 12,
          itemBuilder: (context,index) {
            return ContestEntryCard(priceMoney: '30000',
                timeRemaining: Duration(minutes: 10),
                entriesLeft: 5,
                totalEntries: 30,
                entryMoney: 20,
                onEntryButtonPressed: (){});

          },
        ),

      ),
    );
  }
}
