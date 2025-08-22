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
 // final bool isActive;
  const FooterItemDesktop({required this.title,required this.image,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      context.read<FooterState>().SelectFooterItem(index);
      },

      child: Consumer<FooterState>(
        builder: (context, value, child) {
         return Container(
            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
            decoration: BoxDecoration(
              color: AppColor.lightGrey,
              border: Border(
                top: BorderSide(color:index==value.activeFooter?Colors.black26: Colors.white,width: 2),
                left: BorderSide(color: index==value.activeFooter?Colors.black26: Colors.white,width: 2),
                right: BorderSide(color: index==value.activeFooter?Colors.white:Colors.black,width: 2),
                bottom: BorderSide(color: index==value.activeFooter?Colors.white:Colors.black,width: 2),
              ),


            ),
            child: Row(
              spacing: 5,
              children: [
                Image.asset("assets/icon/$image",width: IconSize.md,height: IconSize.md,),
                Text(title,style: TextStyle(fontSize: TextSize.medium,fontFamily: 'ms_sans'),)
              ],
            ),
          );
        },
      ),
    );
  }
}
