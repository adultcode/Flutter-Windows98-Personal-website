import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../windows_box.dart';

class DesktopContent extends StatelessWidget {
  const DesktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(20),
          child:  WindowsBox(title: "Resume",),),

        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: SvgPicture.asset(
            "assets/icon/cross.svg",
            width: 200,
            height: 200,
          ),
        ),
      ],
    );
  }
}
