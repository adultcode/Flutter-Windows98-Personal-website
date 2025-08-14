import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';
import 'package:hesam/core/constants/margin_size.dart';

import '../../core/constants/text_size.dart';
class WindowSubtitle extends StatelessWidget {


  final  _style = TextStyle(
    fontSize: TextSize.small,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      color: lightGrey,
      child: Row(
        spacing: 5,
        children: [
          Text("File",
            style: _style,
          ),
          Text("Edit",
            style: _style,
          ),
          Text("View",
            style: _style,
          ),
        ],
      ),
    );
  }
}
