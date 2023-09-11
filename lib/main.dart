import 'package:development/CustomWidgets/ContesEntryCard.dart';
import 'package:development/CustomWidgets/game_card.dart';
import 'package:development/CustomWidgets/reward_custom_card.dart';
import 'package:development/Screens/CommonScreens/bottom_nav_bar.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomWidgets/CustomSliceWidget.dart';
import 'CustomWidgets/TournmentCardwidget.dart';
import 'Screens/CommonScreens/splashcreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final customFont = const TextStyle(fontFamily: 'CeraPro');

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: appBgColor,
        backgroundColor: appBgColor,

          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontFamily: 'CeraProBold',
            ),
            displayMedium: TextStyle(
              fontFamily: 'CeraProMedium',
            ),
            displaySmall: TextStyle(
              fontFamily: 'CeraProLight',
            ),
            headlineLarge: TextStyle(
              fontFamily: 'CeraProBold',
            ),
            headlineMedium: TextStyle(
              fontFamily: 'CeraProMedium',
            ),
            headlineSmall: TextStyle(
              fontFamily: 'CeraProLight',
            ),
            titleLarge: TextStyle(
              fontFamily: 'CeraProBold',
            ),
            titleMedium:TextStyle(
              fontFamily: 'CeraProMedium',
            ),
            titleSmall: TextStyle(
              fontFamily: 'CeraProLight',
            ),
            labelLarge: TextStyle(
              fontFamily: 'CeraProBold',
            ),
            labelMedium:TextStyle(
              fontFamily: 'CeraProMedium',
            ),
            labelSmall: TextStyle(
              fontFamily: 'CeraProLight',
            ),

            bodyLarge: TextStyle(
              fontFamily: 'CeraProBold',
            ),
            bodyMedium:TextStyle(
              fontFamily: 'CeraProMedium',
            ),
            bodySmall: TextStyle(
              fontFamily: 'CeraProLight',
            ),
            /*headline1: TextStyle(
              fontFamily: 'CeraProBlack',
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
            headline2: TextStyle(
              fontFamily: 'CeraProBlacki',
              fontStyle: FontStyle.italic,
            ),
            headline3: TextStyle(
              fontFamily: 'CeraProBold',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              fontFamily: 'CeraProLight',
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
            headline5: TextStyle(
              fontFamily: 'CeraProMedium',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            headline6: TextStyle(
              fontFamily: 'CeraProRegularItaclic',
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),*/
          ),

          appBarTheme: AppBarTheme(
          backgroundColor: appBgColor,
          iconTheme: IconThemeData(
            color: appColorWhite
          )
        )
      ),

      home: SplashScreen(),
    );
  }
}


