import 'package:flutter/material.dart';
import 'package:hesam/design/app_color.dart';
class GradientHeader extends StatelessWidget {
  const GradientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [darkBlue,lightBlue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
      ),
      child: Row(
        children: [
          Text("Hey")
        ],
      ),
    );
  }
}
