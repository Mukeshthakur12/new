import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../CustomWidgets/app_text.dart';


class BackButtonScalfold extends StatelessWidget {
  final String? title;
  final Widget child;
  const BackButtonScalfold({Key? key,this.title, required this.child}) : super(key: key);

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
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back,color: appColorWhite,)),
                          SizedBox(width: 10,),
                          Container(
                            height: 45,
                            // padding: EdgeInsets.only(top: 4),
                            // padding: EdgeInsets.all(9.0),
                            child: Center(
                              child:AppText(title!,style: th.labelLarge
                                  ?.copyWith(fontWeight: FontWeight.w600,fontSize: 22),
                                textColor: appColorWhite,),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Image.asset('assets/profile/logo.png',height: 26,width: 107,),
                      )
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