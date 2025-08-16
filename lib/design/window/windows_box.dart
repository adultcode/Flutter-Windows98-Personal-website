import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hesam/core/constants/screen_size.dart';
import 'package:hesam/design/window/window_subtitle.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/constants/app_color.dart';

import 'gradient_header.dart';

class WindowsBox extends StatelessWidget {

  final String title;
  final Widget content;
  const WindowsBox({required this.title,required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.widthSize,
      height: double.infinity,
      /// margins based on Desktop or mobile
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveBreakpoints.of(context).isDesktop?
            max(ScreenSize.widthSize*0.08, 60) :0,

        vertical: ResponsiveBreakpoints.of(context).isDesktop?
        max(ScreenSize.heightSize*0.1, 40) :0
      ),
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
              GradientHeader(title: title,),
              WindowSubtitle(),

              Expanded(child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 1,
                      color: Colors.black
                    ),
                      top: BorderSide(
                      width: 1,
                      color: Colors.black
                    )
                  )
                ),
                child: content,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
