import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../model/data_model.dart';

class DataProvider with ChangeNotifier {
 late DataModel _data;
  bool _loading = true;
  Object? _error;

  DataModel get data => _data;
  bool get isLoading => _loading;
  Object? get error => _error;

  /// parse json file
  Future<void> load() async {
    if (!_loading ) return;
    _loading = true;
    _error = null;


    try {
      notifyListeners();
      final raw = await rootBundle.loadString('assets/data/data.json');
      final map = json.decode(raw) as Map<String, dynamic>;
      _data = DataModel.fromJson(map);
      _loading = false;
      notifyListeners();

    } catch (e) {
      _error = e;
      //_data = null;
      _loading = false;
      notifyListeners();

    }
  }
}