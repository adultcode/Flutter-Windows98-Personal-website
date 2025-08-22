import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/margin_size.dart';

class PortfolioTags extends StatelessWidget {

  final String title;
  const PortfolioTags({required this.title});
  @override
  Widget build(BuildContext context) {
    return FittedBox(
     // width: double.infinity,
      child: Row(
        spacing: MarginSize.sm,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.darkBlue
            ),
          ),
          Text(title,style: TextStyle(fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
