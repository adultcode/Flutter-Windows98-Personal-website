import 'package:flutter/material.dart';
import 'package:hesam/core/constants/text_size.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/margin_size.dart';
import '../../../../../core/data/model/data_model.dart';

class WorkItem extends StatelessWidget {

 Experience experience;
 WorkItem({required this.experience});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MarginSize.md),
      margin: EdgeInsets.symmetric(vertical: MarginSize.sm),
      //height: 50,
     // width: 50,
        decoration: BoxDecoration(
            color: AppColor.lightGrey,
            border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                right: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                top: BorderSide(
                  color: Colors.white70,
                  width: 2.0,
                ),
                left: BorderSide(
                  color: Colors.white70,
                  width: 2.0,
                )
            )
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: MarginSize.sm,
        children: [
          /// company and date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(experience.title,style: TextStyle(fontWeight: FontWeight.w600),)),
              Text("${experience.start} - ${experience.end}",style: TextStyle(fontSize: TextSize.small,fontWeight: FontWeight.w600),),
            ],
          ),

          /// company
          Text(experience.company,style: TextStyle(),),
          /// description
          Text(experience.description,style: TextStyle(),),
        ],
      ),
    );
  }
}
