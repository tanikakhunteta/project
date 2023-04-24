import 'package:flutter/material.dart';

class LiveProvider with ChangeNotifier {
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;
  void add_favourite(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }
  void remove_favourite(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}
