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
  //    borderRadius: BorderRadius.circular(10),

      child: Container(
      width: _wdth,
        height: _wdth,
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,

        decoration: BoxDecoration(

          //color: AppColor.darkGrey,
          color: Color(0xffd6d6d6),


           borderRadius: BorderRadius.circular(5),
          // borderRadius: BorderRadius.only(
          //   topRight: Radius.circular(5),
          //   topLeft: Radius.circular(5),
          //   bottomLeft: Radius.circular(5),
          //   bottomRight: Radius.circular(5),
          // ),
          border: Border.all(color: Colors.black.withValues(alpha: 0.2),width: 2,)
          // border: Border(
          //
          //   bottom: BorderSide(color: Colors.black.withValues(alpha: 0.3),width: 2,),
          //   right: BorderSide(color: Colors.black.withValues(alpha: 0.3),width: 2),
          //   left: BorderSide(color: Colors.black.withValues(alpha: 0.3),width: 2),
          //   top: BorderSide(color: Colors.black.withValues(alpha: 0.3),width: 2),
          // )

        ),
        child: SvgPicture.asset("assets/icon/$icon",width: _wdth,),
      ),
    );
  }
}
