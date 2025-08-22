import 'package:flutter/material.dart';

import 'experience_desktop.dart';
import 'experience_mobile.dart';

Widget buildExperiencePage({required bool isDesktop}){
  if(isDesktop) return ExperienceDesktop();
  return ExperienceMobile();
}