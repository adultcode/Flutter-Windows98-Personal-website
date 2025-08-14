import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';

import '../../../core/constants/icon_size.dart';
import '../../../core/constants/app_color.dart';
import 'item/footer_item_desktop.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2,horizontal: 1),
      color: lightGrey,
      child: Row(
        spacing: 3,
        children: [
          FooterItemDesktop(title: "Home",image: "computer.png",index: 1,),
          FooterItemDesktop(title: "Experience",image: "ie.png",index: 2,),
          FooterItemDesktop(title: "Portfolio",image: "folder.png",index: 3,),
        //  Image.asset("assets/icon/computer.png",width: IconSize.large,height: IconSize.large,),

        ],
      ),
    );
  }
}
