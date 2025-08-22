import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/icon_size.dart';
import 'package:hesam/core/constants/screen_size.dart';
import 'package:hesam/core/constants/text_size.dart';
import 'package:hesam/core/data/model/data_model.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_detail_desktop.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../../design/decoration/app_decoration.dart';
import '../../state/portfolio_provider.dart';

class PortfolioItem extends StatelessWidget {
  final Project project;
  const PortfolioItem({super.key,required this.project});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PortfolioProvider>().SelectProject(newProject: project);
      },
      child: Container(
        //height:ResponsiveBreakpoints.of(context).isDesktop?250: ScreenSize.widthSize*0.7,
        //margin: EdgeInsets.symmetric(vertical:ResponsiveBreakpoints.of(context).isDesktop?0:10 ),
        padding: EdgeInsets.all(4),
        width: double.infinity,
        decoration: AppDecoration.itemDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start  ,
          children: [
            Container(
              //margin: EdgeInsets.all(4),
                decoration: AppDecoration.itemDecorationReverse,
                child: Image.asset("assets/image/${project.thumbnail}",
                  height: 200,
                  width: double.infinity,fit: BoxFit.cover,)),
              Expanded(child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 5,
                children: [
                  Image.asset("assets/icon/paint.png",height: IconSize.lg,),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(text: "${project.title}\n",style: TextStyle(fontSize: TextSize.medium,color: Colors.black,fontWeight: FontWeight.w600)),
                            TextSpan(text: "${project.year}",style: TextStyle(fontSize: TextSize.medium,color: Colors.black)),
                          ]
                      ))


                ],
              ))
          ]
        ),
      ),
    );
  }
}
