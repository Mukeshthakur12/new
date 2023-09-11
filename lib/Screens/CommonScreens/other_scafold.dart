import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../CustomWidgets/app_text.dart';


class OtherScafold extends StatelessWidget {
  final String? title;
  final Widget child;
  const OtherScafold({Key? key,this.title, required this.child}) : super(key: key);

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(CupertinoIcons.arrow_left),
                        onPressed: () {
                          Navigator.pop(context); // Pop the current route and go back
                        },
                      ),
                      Container(
                        height: 45,
                        // padding: EdgeInsets.only(top: 4),
                        // padding: EdgeInsets.all(9.0),
                        child: Center(
                            child:Row(
                              children: [
                                AppText(title!,style: th.titleLarge
                                    ?.copyWith(fontSize: 20),
                                  textColor: appColorWhite,),
                                // AppText(title!,style: th.bodySmall
                                //     ?.copyWith(fontWeight: FontWeight.w500),
                                //   textColor: reviewdetail,),
                              ],

                            )
                        ),
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