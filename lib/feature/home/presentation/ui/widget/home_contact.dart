import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/icon_size.dart';
import '../../../../../core/data/state/data_provider.dart';
import '../../../../../design/widgets/button/simple_button.dart';
import 'contact_widget.dart';
class HomeContact extends StatelessWidget {
  const HomeContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Container(
          width: IconSize.profileSize,
          height: IconSize.profileSize,
          color: Colors.blue,
        ),
        SimpleButton(title: "Download CV",onClick: (){},),
        SizedBox(height: 15,),
        /// contacts
        ContactWidget(icon: "phone.png",title: context.read<DataProvider>().data.contact.phone,),
        ContactWidget(icon: "envelope.png",title: context.read<DataProvider>().data.contact.email,)
      ],
    );
  }
}
