import 'package:development/CustomWidgets/ContesEntryCard.dart';
import 'package:development/CustomWidgets/game_card.dart';
import 'package:development/CustomWidgets/reward_custom_card.dart';
import 'package:development/Screens/RaferandEarn.dart';
import 'package:flutter/material.dart';

import 'CustomWidgets/CustomSliceWidget.dart';
import 'CustomWidgets/ReferAndEarn.dart';
import 'CustomWidgets/TournmentCardwidget.dart';
import 'CustomWidgets/WalletWidgets.dart';
import 'Screens/Menu.dart';
import 'Screens/Profile.dart';
import 'Screens/ReferdPeople.dart';
import 'Screens/TransactionHistory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ReferedPeople(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GameButtonCard(imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False', onPressed: (){

           }),
            // RewardCardWidget(imageUrl: 'imageUrl', title: 'title', description: 'description', initialDuration:  Duration(seconds: 5)),
            CustomRewardWidget(
              imageUrl: "assets/GameButton/reward.png",
              title: 'Daily Games',
              description: 'Rewards are available for premium users',
              initialDuration: Duration(minutes: 10), // Set the initial duration here
            ),
            ContestEntryCard(priceMoney: '30000',
                timeRemaining: Duration(minutes: 10),
                entriesLeft: 5,
                totalEntries: 30,
                entryMoney: 20,
                onEntryButtonPressed: (){}),
            /*TournmentCard(priceMoney: '30000',
                timeRemaining: Duration(minutes: 10),
                entriesLeft: 5,
                totalEntries: 30,
                entryMoney: 20,
                onEntryButtonPressed: (){}),*/
            //ReferEarnCard( onPressed: (){}),
            MoneyCard(
              onPressed: () {
                // Do something when the card is pressed
              },
              totalcash: "100",
              winning: "50",
              deposite: "20",
              bonus: "10",
            ),

        ],
        ),
      ),

    );
  }
}
