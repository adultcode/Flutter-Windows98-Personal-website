import 'package:flutter/material.dart';

import '../../core/constants/app_color.dart';

class AppDecoration{


  static const itemDecoration = BoxDecoration(
      color: AppColor.lightGrey,
      border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          right: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          top: BorderSide(
            color: Colors.white70,
            width: 2.0,
          ),
          left: BorderSide(
            color: Colors.white70,
            width: 2.0,
          )
      )
  );

  static const itemDecorationReverse = BoxDecoration(
      color: AppColor.lightGrey,
      border: Border(
          bottom: BorderSide(
            color: Colors.white70,
            width: 2.0,
          ),
          right: BorderSide(
            color: Colors.white70,
            width: 2.0,
          ),
          top: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          left: BorderSide(
            color: Colors.black,
            width: 2.0,
          )
      )
  );
}