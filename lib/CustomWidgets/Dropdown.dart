import 'package:flutter/material.dart';

import '../Utils/app_color.dart';
import 'app_text.dart';


class CustomDropdownWidget extends StatefulWidget {
  final List<String> items;
  final ValueChanged<int?> onItemSelected;
  final int defaultIndex;

  CustomDropdownWidget({
    required this.items,
    required this.onItemSelected,
    this.defaultIndex = 0,
  });

  @override
  _CustomDropdownWidgetState createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.defaultIndex;
  }

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Expanded(
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: gameinfocard// Adjust the radius as needed
         // border: Border.all(color: inputbordercolor), // Optional border
        ),
        child: DropdownButton<int>(
          isExpanded: true,

          dropdownColor:gameinfocard,
          focusColor:Colors.transparent,
          underline: SizedBox(),
          padding:EdgeInsets.only(right: 8),
          icon:Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
          value: selectedIndex,
          onChanged: (int? newIndex) {
            setState(() {
              selectedIndex = newIndex!;
              widget.onItemSelected(selectedIndex);
            });
          },
          items: List.generate(widget.items.length, (index) {
            return DropdownMenuItem<int>(
              value: index,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding
                child:
                AppText(
                  widget.items[index],
                  style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w300),
                  textColor: appColorWhite,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

