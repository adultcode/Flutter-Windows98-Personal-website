import 'package:flutter/material.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/education_item.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/work_item.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/icon_size.dart';
import '../../../../../core/constants/margin_size.dart';
import '../../../../../core/constants/text_size.dart';
import '../../../../../core/data/state/data_provider.dart';

class ExperienceContent extends StatelessWidget {
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [

        /// work title
        Row(
          spacing: MarginSize.xs,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/icon/work.png",width: IconSize.sm,),
            Text("Experience",style: TextStyle(fontWeight: FontWeight.w600,fontSize: TextSize.large,
                color: AppColor.darkBlue),),
          ],
        ),
        /// work list
        ...context.read<DataProvider>().data.experience.map((e) => WorkItem(experience: e,),).toList(),
        const SizedBox(height: MarginSize.md,),

        /// education title
        Row(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/icon/education.png",width: IconSize.sm,),
            Text("Education",style: TextStyle(fontWeight: FontWeight.w600,fontSize: TextSize.large,
                color: AppColor.darkBlue),),
          ],
        ),
        /// education list
        ...context.read<DataProvider>().data.education.map((e) => EducationItem(education: e,),).toList()

      ],
    );
  }
}
