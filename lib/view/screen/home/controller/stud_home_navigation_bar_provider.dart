import 'package:flutter/material.dart';

class StudNavigationBarProvider extends ChangeNotifier {
  int currentIndex = 0;
  void changeCurrentIndex(index) {
    currentIndex = index;
    notifyListeners();
  }
}
