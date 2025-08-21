import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/screen_size.dart';
import 'package:hesam/core/constants/text_size.dart';
import 'package:hesam/core/data/state/data_provider.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/work_item.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants/margin_size.dart';

class ExperienceDesktop extends StatelessWidget {
  const ExperienceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveBreakpoints.of(context).isDesktop?ScreenSize.widthSize*0.06:
            ScreenSize.widthSize*0.02,
            vertical: MarginSize.md),
       // alignment: Alignment.center,
        child: Consumer<DataProvider>(
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text("Experince",style: TextStyle(fontWeight: FontWeight.w600,fontSize: TextSize.large,
                  color: AppColor.darkBlue),),
                  ...value.data.experience.map((e) => WorkItem(experience: e,),).toList()
                ],
              ),
            );
           // return ListView.builder(
           //    itemCount: value.data.experience.length,
           //    itemBuilder: (context, index) {
           //      return WorkItem(experience: value.data.experience[index],);
           //    },
           //  );
          },
        )
    );
  }
}
