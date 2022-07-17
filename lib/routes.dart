import 'package:flutter/material.dart';
import 'package:open_library/view/book_pages.dart';
import 'package:open_library/view/search_page.dart';
import 'package:open_library/view/user_home.dart';

import 'view/home.dart';

Map<String, WidgetBuilder> generateRoutes() {
  return {
    'home': (BuildContext context) => const Home(),
    'search_home': (BuildContext context) => const SearchPage(),
    'user_home': (BuildContext context) => const UserHome(),
  };
}
