import 'package:flutter/material.dart';
import 'package:open_library/models/book_model.dart';
import 'package:open_library/services/books_api.dart';

class BookDetailViewModel extends ChangeNotifier {
  //List _bookDetail = [];
  Book _bookDetails = Book();

  get bookDetails => _bookDetails;

  setBookDetail(bookDetails) {
    // _bookDetail.add(bookDetail);
    _bookDetails = bookDetails;
  }

  getBookDetail(String id) async {
    var response = await BooksApi.getBookInfo(id);

    setBookDetail(response as Book);
    // if (response.runtimeType == Book) {
    //   setBookDetail(response as Book);
    // } else {
    //   debugPrint("Ocurrió un error intenta nuevamente");
    // }
    notifyListeners();
  }
}
