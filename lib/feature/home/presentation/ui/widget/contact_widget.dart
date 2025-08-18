import 'package:flutter/material.dart';
import 'package:hesam/core/constants/icon_size.dart';

class ContactWidget extends StatelessWidget {
  final String icon;
  final String title;
  const ContactWidget({required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        spacing: 5,
        children: [
          Image.asset("assets/icon/$icon",width: IconSize.sm,),
          Text(title)
        ],
      ),
    );
  }
}
