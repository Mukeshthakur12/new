import 'package:development/CustomWidgets/game_history_card.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/material.dart';

class GameHistoryScreen extends StatelessWidget {
  const GameHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OtherScafold(
        title: 'Games History',
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  GameHistoryScreenCard(image: 'assets/GameHistory/img.png', gameTitle: 'TIC_TAC_TOE',
                      cash: 'cx',
                      winAmount: '20.00', date: '11-Jul-2023 - 05:03PM', text: 'Random')
                ],
              ),
            );
          }
        ));
  }
}
