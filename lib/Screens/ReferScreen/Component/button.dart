import '../../../CustomWidgets/app_text.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../../../Utils/app_color.dart';
//var istrue=false;

mybutton(context,String title,bool istue,bool istrue) {
  //var istrue=false;
  //var istrue;
  return InkWell(
    onTap: () {
// Handle the onTap action here
    },
    child: Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: appColorGreen,
        boxShadow: const [
          BoxShadow(
            color: Color(0xff007b33),
            offset: Offset(-2, -2),
            blurRadius: 2,
            spreadRadius: 0,
            inset: true,
          ),

          BoxShadow(
            color: Color.fromRGBO(4, 4, 4, 0.19),
            offset: Offset(8, 8),
            blurRadius: 16,
            spreadRadius: 0,
            // inset: true,

          ),
          BoxShadow(
            color: Color.fromRGBO(39, 39, 44, 0.19),
            offset: Offset(-8, -8),
            blurRadius: 12,
            spreadRadius: 0,
            //inset: true,

          ),
        ],
      ),
      child: Row(
      //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        istue ? Icon(
          Icons.share, // Replace with the desired icon
          color: Colors.black, // Change the icon color as needed
        ):SizedBox(),
        SizedBox(width: 4.0),
        AppText(title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16)
          , textColor: appColorBlack,),
        // Add some spacing between the icon and text
      ],
    ),
    ),
  );
}
gedientbutton(context,String title, {required Null Function() onTap}) {
  var th = Theme.of(context).textTheme;

  //var istrue=false;
  //var istrue;
  return InkWell(
    hoverColor:Colors.transparent,
    highlightColor:Colors.transparent,
    splashColor :Colors.transparent,
    onTap:  onTap,

    child: Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(69),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFF7A00),
            Color(0xFFFFBC11),
          ],

        ),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(253, 255, 159, 0.93),
              offset: Offset(2, 2),
              blurRadius: 0,
              spreadRadius: 0,
              blurStyle: BlurStyle.inner,
            inset: true,


          ),
          // BoxShadow(
          //   color: Color.fromRGBO(116, 124, 16, 0.24),
          //   offset: Offset(2, 2),
          //   blurRadius: 0,
          //   spreadRadius: 0,
          //   blurStyle: BlurStyle.inner
          //
          // ),
          BoxShadow(
            color: Color.fromRGBO(4, 4, 4, 0.19),
            offset: Offset(8, 8),
            blurRadius: 16,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color.fromRGBO(39, 39, 44, 0.19),
            offset: Offset(-8, -8),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
          child:
          AppText(title,style: th.labelLarge?.copyWith(fontSize: 18,
              fontWeight: FontWeight.w800,
              letterSpacing: .4
          ),textColor: appColorBlack,),
        ),
      ),
    ),
  );
}