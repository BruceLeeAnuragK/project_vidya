import 'package:flutter/material.dart';

class IntroScreenProvider extends ChangeNotifier {
  final pageController = PageController();
  double currentPageIndex = 0;
  void updatePageIndicator(int index) {
    currentPageIndex = index.toDouble();
    notifyListeners();
  }

  void dotNavigationClicked(double index) {
    currentPageIndex = index;
    pageController.jumpToPage(index.toInt());
    notifyListeners();
  }

  void nextPage() {
    notifyListeners();
  }

  void skipPage() {
    currentPageIndex = 2;
    pageController.jumpToPage(2);
    notifyListeners();
  }
}
