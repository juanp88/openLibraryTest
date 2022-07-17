import 'package:flutter/material.dart';
import 'package:open_library/models/book_model.dart';
import 'package:open_library/models/docs_model.dart';
import 'package:open_library/viewmodel/book_detail_view_model.dart';
import 'package:open_library/widgets/book_tabs.dart';
import 'package:provider/provider.dart';

import '../viewmodel/search_result_view_model.dart';

class BookPage extends StatelessWidget {
  final int index;
  const BookPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final booksProvider =
        Provider.of<SearchResultViewModel>(context, listen: true);
    final bookDetailProvider =
        Provider.of<BookDetailViewModel>(context, listen: true);

    Docs bookDocInfo = booksProvider.bookList[index];
    Book bookDetail = bookDetailProvider.bookDetails;
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: FloatingActionButton(
                        child: const Icon(Icons.arrow_back_ios_new),
                        onPressed: () => Navigator.pop(context))),
                Expanded(
                    flex: 1,
                    child: Image.network(
                        "https://covers.openlibrary.org/b/id/${bookDocInfo.coverI} -M.jpg")),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(bookDocInfo.title.toString()),
                      Text(bookDocInfo.authorName![0]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 2,
                  child: BookTabs(
                    descripcion: bookDetail.description.toString(),
                    lugares: bookDocInfo.place!,
                    personajes: bookDocInfo.person!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
