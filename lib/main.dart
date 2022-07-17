import 'package:flutter/material.dart';
import 'package:open_library/routes.dart';
import 'package:open_library/view/home.dart';
import 'package:open_library/view/search_page.dart';
import 'package:open_library/viewmodel/book_detail_view_model.dart';
import 'package:open_library/viewmodel/home_view_model.dart';
import 'package:open_library/viewmodel/register_view_model.dart';
import 'package:open_library/viewmodel/search_result_view_model.dart';
import 'package:open_library/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';

import 'utils/shared_preferences_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchResultViewModel()),
        ChangeNotifierProvider(create: (_) => BookDetailViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => RegisterViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
        routes: generateRoutes(),
      ),
    );
  }
}
