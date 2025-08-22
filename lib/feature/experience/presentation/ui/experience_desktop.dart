import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/icon_size.dart';
import 'package:hesam/core/constants/screen_size.dart';
import 'package:hesam/core/constants/text_size.dart';
import 'package:hesam/core/data/state/data_provider.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/education_item.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/experience_content.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/work_item.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants/margin_size.dart';
import '../../../../design/widgets/scroll/retro_scroll.dart';

class ExperienceDesktop extends StatelessWidget {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(

       // alignment: Alignment.center,
        child: Consumer<DataProvider>(
          builder: (context, value, child) {
            return RetroScroll(
              scrollController: _scrollController,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveBreakpoints.of(context).isDesktop?ScreenSize.widthSize*0.06:
                      ScreenSize.widthSize*0.02,
                      vertical: MarginSize.md),
                  child: ExperienceContent(),
                ),
              ),
            );
          },
        )
    );
  }
}
