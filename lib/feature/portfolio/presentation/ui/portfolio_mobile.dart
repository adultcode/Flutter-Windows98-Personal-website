import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/feature/portfolio/presentation/state/portfolio_provider.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_detail_desktop.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_detail_mobile.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_item.dart';
import 'package:provider/provider.dart';

import '../../../../core/data/state/data_provider.dart';

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Consumer2<DataProvider,PortfolioProvider>(
        builder: (context, dataProvider, portfolioProvider, child) {

          if(portfolioProvider.project !=null ){
            return PortfolioDetailMobile();
          }else{
            return Container(
              //  height: 400,
              padding: EdgeInsets.all(MarginSize.sm),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of items in each row
                  mainAxisExtent: 260.0, // Fixed height for each item
                  crossAxisSpacing: MarginSize.md,
                  mainAxisSpacing: MarginSize.md,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return PortfolioItem(project: dataProvider.data.project[index],);
                },
              ),
            );
          }
        },
      ),
    );
  }
}
