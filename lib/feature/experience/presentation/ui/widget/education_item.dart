import 'package:flutter/material.dart';
import 'package:hesam/core/constants/text_size.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/margin_size.dart';
import '../../../../../core/data/model/data_model.dart';
import '../../../../../design/decoration/app_decoration.dart';

class EducationItem extends StatelessWidget {

  Education education;
  EducationItem({required this.education});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MarginSize.md),
      margin: EdgeInsets.symmetric(vertical: MarginSize.sm),
      //height: 50,
      // width: 50,
      decoration: AppDecoration.itemDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: MarginSize.sm,
        children: [
          /// company and date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(education.title,style: TextStyle(fontWeight: FontWeight.w600),)),
              Text("${education.start} - ${education.end}",style: TextStyle(fontSize: TextSize.small,fontWeight: FontWeight.w600),),
            ],
          ),

          /// company
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text:education.university ),
                TextSpan(text:" - ${education.degree}" ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
