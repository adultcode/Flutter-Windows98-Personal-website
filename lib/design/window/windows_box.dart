import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hesam/core/constants/screen_size.dart';
import 'package:hesam/design/window/window_subtitle.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/constants/app_color.dart';

import '../../core/constants/margin_size.dart';
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
            max(ScreenSize.widthSize*0.15, MarginSize.windowHorizontalDesktop) :0,

        vertical: ResponsiveBreakpoints.of(context).isDesktop?
        max(ScreenSize.heightSize*0.08, MarginSize.windowVerticalDesktop) :0
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: MarginSize.windowBorder,
          ),
          right: BorderSide(
            color: Colors.black,
            width: MarginSize.windowBorder,
          ),
            top: BorderSide(
              color: AppColor.lightGrey,
              width: MarginSize.windowBorder,
            ),
            left: BorderSide(
            color: AppColor.lightGrey,
            width: MarginSize.windowBorder,
          )
        )
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: AppColor.darkGrey,
                  width: MarginSize.windowBorder,
                ),
                right: BorderSide(
                  color: AppColor.darkGrey,
                  width: MarginSize.windowBorder,
                ),
                top: BorderSide(
                  color: Colors.white,
                  width: MarginSize.windowBorder,
                ),
                left: BorderSide(
                  color: Colors.white,
                  width: MarginSize.windowBorder,
                )
            )
        ),
        child: Container(
          color: AppColor.lightGrey,
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
