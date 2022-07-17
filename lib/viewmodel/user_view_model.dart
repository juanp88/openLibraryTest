import 'package:flutter/cupertino.dart';

class UserViewModel extends ChangeNotifier {
  bool _refreshPage = false;

  get refreshPage => _refreshPage;

  setRefreshPage(bool refresh) {
    _refreshPage = refresh;
    notifyListeners();
  }
}
