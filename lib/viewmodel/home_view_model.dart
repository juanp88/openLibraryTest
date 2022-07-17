import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  setcurrenIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
