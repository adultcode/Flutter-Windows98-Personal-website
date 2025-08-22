import 'package:flutter/material.dart';
import 'package:hesam/design/decoration/app_decoration.dart';

import '../../../../../core/constants/icon_size.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: IconSize.profileSize,
      height: IconSize.profileSize,
      decoration: AppDecoration.itemDecorationReverse,
      padding: EdgeInsets.all(2),
      child: Image.asset("assets/image/profile.jpg",width: 80,height: 80,),
    );
  }
}
