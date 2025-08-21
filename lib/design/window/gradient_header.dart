import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/feature/portfolio/presentation/state/portfolio_provider.dart';
import 'package:provider/provider.dart';

import '../../core/constants/icon_size.dart';
import '../../core/constants/margin_size.dart';
import '../../core/constants/text_size.dart';
import '../../state/footer_state.dart';

class GradientHeader extends StatelessWidget {
  final String title;
  const GradientHeader({required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.symmetric(vertical: 4,horizontal: MarginSize.sm),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.darkBlue,AppColor.lightBlue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: TextStyle(fontSize: TextSize.medium,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1,
              fontFamily: 'ms_sans'),),
          /// header icons
          Row(
            spacing: 2,
            children: [

              Image.asset("assets/icon/minimize.png",width: IconSize.sm,height: IconSize.sm,),
              Image.asset("assets/icon/maximize.png",width: IconSize.sm,height: IconSize.sm,),
              const SizedBox(width: MarginSize.xs,),
              GestureDetector(
                  onTap: () {
                    /// back to portfolio page
                    if(context.read<PortfolioProvider>().project !=null){
                      context.read<PortfolioProvider>().ClearProject();
                    }else{
                      /// dismiss windows
                      context.read<FooterState>().SelectFooterItem(0);


                    }
                  },
                  child: Image.asset("assets/icon/Cross.png",width: IconSize.sm,height: IconSize.sm,)),
            ],
          )
        ],
      ),
    );
  }
}
