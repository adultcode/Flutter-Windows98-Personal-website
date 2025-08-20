import 'package:flutter/cupertino.dart';

import '../../../../core/data/model/data_model.dart';

class PortfolioProvider extends ChangeNotifier{
  Project? project;

  SelectProject({required Project newProject}){
    project = newProject;
    notifyListeners();
  }

  ClearProject(){
    project = null;
    notifyListeners();
  }
}