import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/app_text.dart';
import '../ResultScreen/price_breakdown.dart';


class GameScafold extends StatelessWidget {
  final Widget child;
  const GameScafold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      color: appBgColor,
      child: Stack(
        children: [
          Positioned.fill(
              child:  SvgPicture.asset('assets/Game/backgrouund.svg',fit: BoxFit.fill,)
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                      Container(
                        child: Image.asset('assets/GameButton/fruit.png'),
                      ),
                      Container(
                        child: InkWell(
                            onTap: (){
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: PriceBreakup(),
                                withNavBar: false,
                                pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                              );
                            },
                            child: SvgPicture.asset('assets/profile/leaderboard.svg')),
                      ),

                    ],
                  ),
                )
            ),
            body: Column(
              children: [
                Expanded(
                  child: child,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}