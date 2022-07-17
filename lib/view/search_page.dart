import 'package:flutter/material.dart';
import 'package:open_library/utils/constants/app_styling.dart';
import 'package:open_library/widgets/books_listview.dart';
import 'package:open_library/widgets/home_top_decoration.dart';
import 'package:open_library/widgets/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _HomeState();
}

class _HomeState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyling().bgSearchPage,
        body: Column(
          children: [
            //searchbar
            Expanded(flex: 1, child: Center(child: SearchBar())),
            //books results
            Expanded(flex: 3, child: BooksListView()),
          ],
        ),
      ),
    );
  }
}
