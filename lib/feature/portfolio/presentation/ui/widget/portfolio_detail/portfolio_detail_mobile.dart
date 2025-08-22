import 'package:flutter/material.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_detail_content.dart';

class PortfolioDetailMobile extends StatelessWidget {
  const PortfolioDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
        child: PortfolioDetailContent(),

    );
  }
}
