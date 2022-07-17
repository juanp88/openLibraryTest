import 'package:flutter/material.dart';
import 'package:open_library/view/book_pages.dart';
import 'package:open_library/viewmodel/book_detail_view_model.dart';
import 'package:provider/provider.dart';

import '../viewmodel/search_result_view_model.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String bookId;
  final String author;
  final String coverId;
  final int index;

  const BookTile(
      {Key? key,
      required this.title,
      required this.bookId,
      required this.author,
      required this.coverId,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final booksProvider =
        Provider.of<BookDetailViewModel>(context, listen: true);
    return Card(
      child: ListTile(
        onTap: () {
          booksProvider.getBookDetail(bookId);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookPage(index: index)),
          );
        },
        style: ListTileStyle.drawer,
        title: Text(title),
        subtitle: Text(author),
        trailing: SizedBox(
          width: 100,
          child: Image.network(
              "https://covers.openlibrary.org/b/id/${coverId}-M.jpg"),
        ),
      ),
    );
    ;
  }
}
