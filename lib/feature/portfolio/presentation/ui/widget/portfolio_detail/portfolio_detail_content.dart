import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_tags.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/constants/margin_size.dart';
import '../../../../../../core/constants/text_size.dart';
import '../../../../../../design/widgets/button/simple_button.dart';
import '../../../state/portfolio_provider.dart';

class PortfolioDetailContent extends StatelessWidget {
  const PortfolioDetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MarginSize.xl,vertical: MarginSize.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: MarginSize.md,
        children: [
          /// project title
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: MarginSize.sm,
            children: [
              // GestureDetector(
              //   onTap: () {
              //
              //   },
              //   child: Image.asset("assets/icon/error.png",width: 20,),
              // ),
              Text(context.read<PortfolioProvider>().project!.title,
                style: TextStyle(fontSize: TextSize.xLarge),)
            ],
          ),

          /// project thumbnail
          Image.asset("assets/image/${context.read<PortfolioProvider>().project!.thumbnail}",
            fit: BoxFit.cover,),


          ///project tags(technelogies)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //  color: Colors.blue,
                width: 400,
                child:
                // Flexible(
                //   flex: 1,
                //   child:
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: MarginSize.sm,
                  direction: Axis.horizontal,

                  children: [
                    ...context.read<PortfolioProvider>().project!.technologies.map((e) => PortfolioTags(title: e),).toList(),
                  ],
                ),
                //  ),
              ),
              /// project year
              Text(context.read<PortfolioProvider>().project?.year.toString()??"",
                  style: TextStyle(fontWeight: FontWeight.w600))
            ],
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
          //     Text(context.read<PortfolioProvider>().project!.description,
          //       style: TextStyle(fontSize: TextSize.large,color: Colors.black),),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              /// download link
              if(context.read<PortfolioProvider>().project?.download !=null)
                SimpleButton(title: "Download", onClick: () {

                },),

              /// Visit website link
              if(context.read<PortfolioProvider>().project?.link !=null)
                SimpleButton(title: "    Visit    ", onClick: () {

                },),
            ],
          )
        ],
      ),
    );
  }
}
