import 'package:flutter/material.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/core/constants/text_size.dart';
import 'package:hesam/design/widgets/button/simple_button.dart';
import 'package:hesam/feature/portfolio/presentation/state/portfolio_provider.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_detail_content.dart';
import 'package:hesam/feature/portfolio/presentation/ui/widget/portfolio_detail/portfolio_tags.dart';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../../../design/widgets/scroll/retro_scroll.dart';

class PortfolioDetailDesktop extends StatelessWidget {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        child: RetroScroll(
          scrollController: _scrollController,
          child: Container(
            //padding: EdgeInsets.only(right: 10),
            child: SingleChildScrollView(
                controller: _scrollController,
              child: PortfolioDetailContent(),
            ),
          ),


      ),
    );
  }
}
