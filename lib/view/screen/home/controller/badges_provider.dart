import 'package:flutter/material.dart';

class BadgesProvider extends ChangeNotifier {
  bool isbadges = true;
  void isBadges() {
    isbadges = true;
    notifyListeners();
  }

  void isScore() {
    isbadges = false;
    notifyListeners();
  }
}
