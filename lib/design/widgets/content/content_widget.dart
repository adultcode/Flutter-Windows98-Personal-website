import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
            return  buildHomePage(isDesktop: ResponsiveBreakpoints.of(context).isDesktop);
          default: return Container();
        }
      },
    );

    // if(ResponsiveBreakpoints.of(context).isDesktop) return DesktopContent();
    // return MobileContent();
  }
}

