import 'package:flutter/material.dart';
import 'package:hesam/feature/portfolio/presentation/ui/portfolio_desktop.dart';
import 'package:hesam/feature/portfolio/presentation/ui/portfolio_mobile.dart';



Widget buildPortfolio({required bool isDesktop}){
  if(isDesktop) return PortfolioDesktop();
  return PortfolioMobile();
}