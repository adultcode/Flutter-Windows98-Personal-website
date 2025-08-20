import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_item.dart';
import 'package:provider/provider.dart';

import '../../../../core/data/state/data_provider.dart';

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Consumer<DataProvider>(
        builder: (context, value, child) {
         return Container(
         //  height: 400,
           padding: EdgeInsets.all(MarginSize.sm),
           child: GridView.builder(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2, // Number of items in each row
               mainAxisExtent: 260.0, // Fixed height for each item
               crossAxisSpacing: 10.0,
               mainAxisSpacing: 10.0,
             ),
             itemCount: 2,
             itemBuilder: (context, index) {
               return PortfolioItem(project: value.data.project[index],);
             },
             // children: [
             //   ...dataProvider.data.project.map((e) => PortfolioItem(project: e,),).toList()
             // ],
           ),
         );
        },
      ) ,
    );
  }
}
