import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/ContesEntryCard.dart';

class TournmentScreen extends StatelessWidget {
  const TournmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,

      appBar: AppBar(
        backgroundColor: appBgColor,
        title: AppText.white('Torunment'),
      ),
      body: Container(
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
