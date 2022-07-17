import 'package:flutter/material.dart';
import 'package:open_library/models/search_model.dart';
import 'package:open_library/models/docs_model.dart';
import 'package:open_library/widgets/book_tile.dart';
import 'package:provider/provider.dart';

import '../viewmodel/search_result_view_model.dart';

class BooksListView extends StatefulWidget {
  BooksListView({Key? key}) : super(key: key);

  @override
  State<BooksListView> createState() => _BooksListViewState();
}

class _BooksListViewState extends State<BooksListView> {
  @override
  Widget build(BuildContext context) {
    final booksProvider =
        Provider.of<SearchResultViewModel>(context, listen: true);
    final bookList = booksProvider.bookList;

    return (booksProvider.isLoading == false)
        ? (bookList.length > 0)
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
                itemCount: booksProvider.bookList.length,
                itemBuilder: (BuildContext context, int index) {
                  Docs book = bookList[index];
                  return BookTile(
                    title: book.title.toString(),
                    author: book.authorName![0].toString(),
                    coverId: book.coverI.toString(),
                    bookId: book.key.toString(),
                    index: index,
                  );
                },
              )
            : (booksProvider.firstSearch == true)
                ? Container()
                : (Container(
                    child: Text('No se encontró lo que buscabas'),
                  ))
        : Center(child: CircularProgressIndicator());
  }
}
