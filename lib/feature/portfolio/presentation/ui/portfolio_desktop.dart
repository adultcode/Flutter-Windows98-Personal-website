import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/core/data/state/data_provider.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_item.dart';
import 'package:provider/provider.dart';

class PortfolioDesktop extends StatelessWidget {
  const PortfolioDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MarginSize.sm),
      child: Column(
     children: [

       Expanded(
         child: Consumer<DataProvider>(
            builder: (context, dataProvider, child) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of items in each row
                  mainAxisExtent: 260.0, // Fixed height for each item
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return PortfolioItem(project: dataProvider.data.project[index],);
                },
                // children: [
                //   ...dataProvider.data.project.map((e) => PortfolioItem(project: e,),).toList()
                // ],
              );
            },
         ),
       ),
       // Row(
       //   spacing: 5,
       //   children: [
       //     Expanded(child: PortfolioItem()),
       //     Expanded(child: PortfolioItem()),
       //   ],
       // )
     ],
    ),);
  }
}
