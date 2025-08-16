import 'package:flutter/material.dart';


import 'home_desktop.dart';
import 'home_mobile.dart';

Widget buildHomePage({required bool isDesktop}){
  if(isDesktop) return HomeDesktop();
  return HomeMobile();
}