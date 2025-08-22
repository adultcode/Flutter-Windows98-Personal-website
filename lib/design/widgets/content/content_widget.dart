import 'package:flutter/material.dart';
import 'package:hesam/design/window/windows_box.dart';
import 'package:hesam/feature/portfolio/presentation/ui/portfolio.dart';

import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../feature/experience/presentation/ui/experience.dart';
import '../../../feature/home/presentation/ui/home.dart';
import '../../../state/footer_state.dart';


/// show active footer item contetn
class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {

   return Selector<FooterState,int>(
      selector: (p0, p1) => p1.activeFooter,
      builder: (context, value, child) {

        switch (value){
          case 1:
              /// show home content
            return  WindowsBox(title: "Home",content: buildHomePage(isDesktop: ResponsiveBreakpoints.of(context).isDesktop));
          case 2:
              /// show home content
            return  WindowsBox(title: "Experience",content: buildExperiencePage(isDesktop: ResponsiveBreakpoints.of(context).isDesktop));
          case 3:
              /// show portfolio content
            return  WindowsBox(
                title: "Portfolio",
                content: buildPortfolio(isDesktop: ResponsiveBreakpoints.of(context).isDesktop));
          default: return Container();
        }
      },
    );


  }
}

