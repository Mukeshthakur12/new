import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EntryFeeCard extends StatefulWidget {
  final VoidCallback onPressed;

   EntryFeeCard({super.key,required this.onPressed});
  @override
  _EntryFeeCardState createState() => _EntryFeeCardState();
}

class _EntryFeeCardState extends State<EntryFeeCard> {
  Color containerColor = appPrimaryColor;
  int selectedIndex = 0;

  final List<String> priceList = [
    '50','30','20','5','10'
  ];
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: appPrimaryColor,
      ),
      height: 215,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText('Choose your entry fee',style: th.titleLarge?.copyWith(fontSize: 22),
                  textColor: appColorWhite,),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(CupertinoIcons.question_circle,size:28,color: appColorWhite,)),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            height: 51,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                bool isSelected = index == selectedIndex;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // Update the selected index on tap
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    height: 20,
                    width: 52,
                    clipBehavior: Clip.hardEdge,

                    decoration: BoxDecoration(
                        border:isSelected ?null:Border.all(
                            width: 1,
                            color: appPriceBorder
                        ),
                        color: isSelected ? appColorGreen :  appPrimaryColor ,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow:isSelected ? const [

                          BoxShadow(
                            color: Color(0x30040404),
                            blurRadius: 16,
                            offset: Offset(8, 8),
                            spreadRadius: 0,

                          )
                          ,BoxShadow(
                            color: Color(0x3027272C),
                            blurRadius: 12,
                            offset: Offset(-8, -8),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                              color: Color(0x30040404),
                              offset: Offset(0, 3),
                              blurRadius: 3,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.inner

                          ),
                        ]:[],


                ),

                    child: Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(28),
                        boxShadow:isSelected ?  [

                          BoxShadow(
                              color: Color(0xFF3D107C).withOpacity(0.2),
                              offset: Offset(-2, -2),
                              blurRadius: 1,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.outer

                          ),
                        ]:[],


                      ),

                      child: Center(
                        child: AppText(priceList[index],style: th.titleMedium?.copyWith(fontSize:22,fontWeight: FontWeight.w500),
                          textColor: isSelected ? Color(0xff44284C) :appColorWhite,),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5,),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 34),
            padding: EdgeInsets.symmetric(vertical: 0,horizontal: 17),

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [

                  Color(0xFFDE9300),
                  Color(0xFFFFBC11),
                ],
              ),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText('Winning Amount',style: th.labelLarge?.copyWith(),
                    textColor: gameinfocard),
                Row(
                  children: [
                    SvgPicture.asset('assets/GameButton/trophy.svg'),
                    SizedBox(width: 4,),
                    AppText(
                      "₹20000",
                      style: th.titleLarge?.copyWith(fontWeight: FontWeight.w900),textColor: gameinfocard,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
