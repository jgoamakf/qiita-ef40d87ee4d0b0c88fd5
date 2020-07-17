import 'package:flutter/foundation.dart';

class ExampleState with ChangeNotifier {
  String _data = "";

  String get data => _data;

  void setData(String data) {
    _data = data;
    notifyListeners();
  }
}
