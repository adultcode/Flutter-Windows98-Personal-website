import 'package:flutter/material.dart';

import '../app_color.dart';
import 'gradient_header.dart';

class WindowsBox extends StatelessWidget {
  const WindowsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
          right: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
            top: BorderSide(
              color: Color(0xffBFBFBF),
              width: 3.0,
            ),
            left: BorderSide(
            color: Color(0xffBFBFBF),
            width: 3.0,
          )
        )
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: darkGrey,
                  width: 3.0,
                ),
                right: BorderSide(
                  color: darkGrey,
                  width: 3.0,
                ),
                top: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                ),
                left: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                )
            )
        ),
        child: Container(
          color: lightGrey,
          child: Column(
            children: [
              GradientHeader(),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
