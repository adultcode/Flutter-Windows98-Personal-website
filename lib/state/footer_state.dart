import 'package:flutter/cupertino.dart';

class FooterState extends ChangeNotifier{

  /// 0 -> Empty content
  /// 1 -> Home content
  /// 2 -> Experience content
  /// 3 -> Project content
  int _activeFooter = 1;
  int get activeFooter  => _activeFooter;
  /// update active footer item
  SelectFooterItem(int selected){
    _activeFooter = selected;
    notifyListeners();
  }
}