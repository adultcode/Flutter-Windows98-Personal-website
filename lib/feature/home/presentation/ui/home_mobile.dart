import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/margin_size.dart';
import 'package:hesam/design/window/windows_box.dart';
import 'package:hesam/feature/home/presentation/ui/widget/contact_widget.dart';
import 'package:hesam/feature/home/presentation/ui/widget/home_contact.dart';
import 'package:hesam/feature/home/presentation/ui/widget/skill_widget.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/icon_size.dart';
import '../../../../core/constants/text_size.dart';
import '../../../../core/data/state/data_provider.dart';
import '../../../../design/widgets/button/simple_button.dart';

class HomeMobile extends StatelessWidget {
 // const HomeMobile({super.key});

  final  _titleStyle = TextStyle(
    fontSize: TextSize.xxLarge,
    fontWeight: FontWeight.bold
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MarginSize.lg),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: MarginSize.md,
          children: [
            Container(
              width: IconSize.profileSize,
              height: IconSize.profileSize,
              color: Colors.blue,
            ),
            Container(
              //   alignment: ,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(

                      children: [
                        TextSpan(text: "Hi ",style: _titleStyle),
                        TextSpan(text: "I'm ",style: _titleStyle.copyWith(color: AppColor.lightBlue)),
                        TextSpan(text: "Hesam Rasoulian",style: _titleStyle),
                        TextSpan(text: "\na Flutter developer",style: _titleStyle),
                      ]
                  )),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text("About me",textAlign: TextAlign.start,style: TextStyle(fontSize: TextSize.large,fontWeight: FontWeight.bold,fontFamily: 'gilory'),)),
            //SizedBox(height: MarginSize.xs,),
            Text(context.read<DataProvider>().data.profile.bio,style: TextStyle(fontSize: TextSize.medium),
              textAlign: TextAlign.justify,),

            Container(
                alignment: Alignment.centerLeft,
                child: Text("Skill",style: TextStyle(fontSize: TextSize.large,fontWeight: FontWeight.bold,fontFamily: 'gilory'),)),
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
            ),

            Container(
                alignment: Alignment.centerLeft,
                child: Text("Contact",style: TextStyle(fontSize: TextSize.large,fontWeight: FontWeight.bold,fontFamily: 'gilory'),)),

            ContactWidget(icon: "phone.png",title: context.read<DataProvider>().data.contact.phone,),
            ContactWidget(icon: "envelope.png",title: context.read<DataProvider>().data.contact.email,),
            SimpleButton(title: "Download CV",onClick: (){},),



          ],
        ),
      ),
    );

  }
}
