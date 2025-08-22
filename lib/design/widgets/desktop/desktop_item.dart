import 'package:flutter/material.dart';
import 'package:hesam/core/constants/icon_size.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/core/constants/text_size.dart';

class DesktopItem extends StatelessWidget {

  final String title;
  final String icon;
  const DesktopItem({required this.title,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: MarginSize.xs,
      children: [
        Image.asset("assets/icon/$icon",width: IconSize.lg,),
        Text(title,style: TextStyle(fontSize: TextSize.small,fontFamily: "ms_sans",
            fontWeight: FontWeight.w600,color: Colors.black),)
      ],
    );
  }
}
