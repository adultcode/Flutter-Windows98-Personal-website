import 'package:flutter/material.dart';
import 'package:hesam/feature/experience/presentation/ui/widget/experience_content.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/margin_size.dart';
import '../../../../core/data/state/data_provider.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, value, child) {
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal:MarginSize.md,
              vertical: MarginSize.md),
          child: ExperienceContent(),
        );
      },
    );
  }
}
