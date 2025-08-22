import 'package:flutter/material.dart';

import '../../../core/constants/app_color.dart';

class RetroScroll extends StatelessWidget {
 final Widget child;
 final ScrollController scrollController;
 const  RetroScroll({super.key,required this.child,required this.scrollController});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScrollbarTheme(data: ScrollbarThemeData(
        thickness: MaterialStateProperty.all(8),
    minThumbLength: 8,
    mainAxisMargin: 0,
    trackColor: MaterialStateProperty.all(Colors.white),
    thumbColor: MaterialStateProperty.all(AppColor.darkGrey),
    ),
    child: Scrollbar(
      controller: scrollController,

      thumbVisibility: true,
      trackVisibility: true,
      interactive: true,
      radius: Radius.circular(0),
      scrollbarOrientation: ScrollbarOrientation.right,
    child: child,
    ),
    ),
    );
  }
}
