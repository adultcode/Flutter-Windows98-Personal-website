import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/core/constants/text_size.dart';
import 'package:hesam/feature/portfolio/presentation/state/portfolio_provider.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_tags.dart';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart';

class PortfolioDetailDesktop extends StatelessWidget {
  const PortfolioDetailDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(MarginSize.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: MarginSize.md,
          children: [
            /// project title
            Text(context.read<PortfolioProvider>().project!.title,
            style: TextStyle(fontSize: TextSize.xLarge),),

            /// project thumbnail
            Image.asset("assets/image/${context.read<PortfolioProvider>().project!.thumbnail}"),


            ///project tags(technelogies)
            Container(
            //  color: Colors.blue,
              width: 400,
              child:
              // Flexible(
              //   flex: 1,
              //   child:
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 10,
                  direction: Axis.horizontal,
                
                  children: [
                  ...context.read<PortfolioProvider>().project!.technologies.map((e) => PortfolioTags(title: e),).toList(),
                  ],
                ),
            //  ),
            ),
            /// project description
            Html(
            data: context.read<PortfolioProvider>().project!.description,
              style: {
              "p":Style(fontSize: FontSize(TextSize.large))
              },
            ),
        //     Html(
        //     data: """
        //             <h1>Hello, World!</h1>
        // <p><span style="font-style:italic;">flutter_html</span> supports a variety of HTML and CSS tags and attributes.</p>
        //
        //     """,
        //     ),
            Text(context.read<PortfolioProvider>().project!.description,
              style: TextStyle(fontSize: TextSize.large,color: Colors.black),),

            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
