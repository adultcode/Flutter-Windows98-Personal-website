import 'package:flutter/material.dart';
import 'package:hesam/feature/home/presentation/home_desktop.dart';
import 'package:hesam/feature/home/presentation/home_mobile.dart';

Widget buildHomePage({required bool isDesktop}){
  if(isDesktop) return HomeDesktop();
  return HomeMobile();
}