import 'package:flutter/material.dart';
import 'package:hesam/design/widgets/content/desktop_content.dart';
import 'package:hesam/design/widgets/content/mobile_content.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveBreakpoints.of(context).isDesktop) return DesktopContent();
    return MobileContent();
  }
}

