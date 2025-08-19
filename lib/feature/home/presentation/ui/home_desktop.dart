import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/core/constants/screen_size.dart';
import 'package:hesam/core/constants/text_size.dart';
import 'package:hesam/feature/home/presentation/ui/widget/contact_widget.dart';
import 'package:hesam/feature/home/presentation/ui/widget/home_contact.dart';
import 'package:hesam/feature/home/presentation/ui/widget/skill_widget.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/icon_size.dart';
import '../../../../core/data/state/data_provider.dart';
import '../../../../design/separator_widget.dart';
import '../../../../design/widgets/button/simple_button.dart';
import '../../../../design/window/windows_box.dart';
class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowsBox(title: "Resume",content: HomeContent(),);
  }
}

class HomeContent extends StatelessWidget {

  final ScrollController _scrollController = ScrollController();

  List<Widget>  skills = [
    SkillWidget(icon: "flutter2.svg"),
    SkillWidget(icon: "dart.svg"),
    SkillWidget(icon: "django.svg"),
    SkillWidget(icon: "git.svg"),
    SkillWidget(icon: "kotlin.svg"),
    SkillWidget(icon: "go.svg"),
  ];
  HomeDesktop(){
    // skills.add(SkillWidget(icon: "flutter2.svg"));
    // skills.add(SkillWidget(icon: "flutter2.svg"));
    // skills.add(SkillWidget(icon: "flutter2.svg"));
    // skills.add(SkillWidget(icon: "flutter2.svg"));
    // skills.add(SkillWidget(icon: "flutter2.svg"));
    // skills.add(SkillWidget(icon: "flutter2.svg"));
    // skills.add(SkillWidget(icon: "flutter2.svg"));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.red,
      child: ScrollbarTheme(data: ScrollbarThemeData(
        thickness: MaterialStateProperty.all(8),
        minThumbLength: 8,
        mainAxisMargin: 0,
        trackColor: MaterialStateProperty.all(Colors.white),
        thumbColor: MaterialStateProperty.all(AppColor.darkGrey),
      ),
          child: Scrollbar(
            controller: _scrollController,

            thumbVisibility: true,
            trackVisibility: true,
            interactive: true,
            radius: Radius.circular(0),
            scrollbarOrientation: ScrollbarOrientation.right,

            child: ListView(
              controller: _scrollController,

              children: [
                Padding(padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                //  spacing: MarginSize.md,
                  spacing: ScreenSize.widthSize*0.02,
                  children: [
                    /// profile image
                   Container(
                   //  flex: 4,
                     child: HomeContact(),
                   ),
                    /// personal information
                    Expanded(
                      //  flex: 11,
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// name
                        Text(context.read<DataProvider>().data.profile.name,style: TextStyle(fontSize: TextSize.large,fontWeight: FontWeight.bold,fontFamily: 'gilory'),),
                        /// title
                        Text(context.read<DataProvider>().data.profile.title,style: TextStyle(fontSize: TextSize.large),),

                        SeparatorWidget(),
                        /// about me title
                        Text("About me",style: TextStyle(fontSize: TextSize.large,fontWeight: FontWeight.bold,fontFamily: 'gilory'),),
                        SizedBox(height: MarginSize.xs,),
                        Text(context.read<DataProvider>().data.profile.bio,style: TextStyle(fontSize: TextSize.large),textAlign: TextAlign.justify,),
                        SeparatorWidget(),
                        Text("Skill",style: TextStyle(fontSize: TextSize.large,fontWeight: FontWeight.bold,fontFamily: 'gilory'),),
                        SizedBox(height: MarginSize.xs,),

                       Consumer<DataProvider>(
                         builder: (context, value, child) {
                           return Wrap(
                             spacing: 10,
                             direction: Axis.horizontal,
                             children: [

                              ...value.data.skills.map((e) => SkillWidget(icon: e.icon),).toList()
                             ],
                           );
                         },
                       )



                      ],
                    )),


                  ],
                ),)
              ],
            ),
          ))
    );
  }
}
