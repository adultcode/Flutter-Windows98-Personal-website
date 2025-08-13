import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';

import '../../../core/constants/icon_size.dart';
import '../../app_color.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: MarginSize.xs),
      color: lightGrey,
      child: Row(
        children: [
          Image.asset("assets/icon/computer.png",width: IconSize.large,height: IconSize.large,),

        ],
      ),
    );
  }
}
