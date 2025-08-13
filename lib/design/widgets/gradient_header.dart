import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesam/design/app_color.dart';

import '../../core/constants/icon_size.dart';
import '../../core/constants/margin_size.dart';

class GradientHeader extends StatelessWidget {
  final String title;
  const GradientHeader({required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.symmetric(vertical: 4,horizontal: MarginSize.sm),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [darkBlue,lightBlue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1),),
          /// header icons
          Row(
            spacing: 1,
            children: [
              // SvgPicture.asset(
              //   "assets/icon/cross2.svg",
              //   width: 50,
              //   height: 50,
              // ),

              Image.asset("assets/icon/minimize.png",width: IconSize.medium,height: IconSize.medium,),
              Image.asset("assets/icon/maximize.png",width: IconSize.medium,height: IconSize.medium,),
              Image.asset("assets/icon/Cross.png",width: IconSize.medium,height: IconSize.medium,),
            ],
          )
        ],
      ),
    );
  }
}
