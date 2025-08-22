import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/design/window/windows_box.dart';

class SkillWidget extends StatelessWidget {

  final String icon;
  const SkillWidget({required this.icon});
  final double _wdth = 50.0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      child: Container(
      width: _wdth,
        height: _wdth,
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,

        decoration: BoxDecoration(

          //color: AppColor.darkGrey,
          color: Color(0xffd6d6d6),


           borderRadius: BorderRadius.circular(5),

          // ),
          border: Border.all(color: Colors.black.withValues(alpha: 0.2),width: 2,)


        ),
        child: SvgPicture.asset("assets/icon/$icon",width: _wdth,),
      ),
    );
  }
}
