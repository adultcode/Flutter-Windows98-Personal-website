import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/state/footer_state.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/icon_size.dart';
import '../../../../core/constants/text_size.dart';

class FooterItemDesktop extends StatelessWidget {


  final String title;
  final String image;
  final int index;
  const FooterItemDesktop({required this.title,required this.image,required this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
     //   print("onTap");
      context.read<FooterState>().SelectFooterItem(index);
      },
      onLongPressEnd: (details) {
        print("onLongPressEnd");

      },
      onLongPressStart: (details) {
        print("onLongPressStart");

      },
      onLongPress: () {
       // print("onLongPress");

      },
      onForcePressEnd: (details) {
        print("onForcePressEnd");
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
        decoration: BoxDecoration(
          color: lightGrey,
          border: Border(
            top: BorderSide(color: Colors.white,width: 2),
            left: BorderSide(color: Colors.white,width: 2),
            right: BorderSide(color: Colors.black,width: 2),
            bottom: BorderSide(color: Colors.black,width: 2),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black,
          //     blurRadius: 4,
          //     blurStyle: BlurStyle.outer,
          //     offset: Offset(1, 2)
          //   )
          // ]
        ),
        child: Row(
          spacing: 5,
          children: [
            Image.asset("assets/icon/$image",width: IconSize.md,height: IconSize.md,),
            Text(title,style: TextStyle(fontSize: TextSize.medium),)
          ],
        ),
      ),
    );
  }
}
