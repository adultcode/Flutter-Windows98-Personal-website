import 'package:flutter/material.dart';

import '../core/constants/margin_size.dart';

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MarginSize.xxl,),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.asset("assets/icon/div.png",width: 90,),
        ),
        SizedBox(height: MarginSize.xxl,)
      ],
    );
  }
}
