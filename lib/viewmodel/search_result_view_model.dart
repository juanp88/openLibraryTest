import 'package:flutter/material.dart';
import 'package:open_library/models/search_model.dart';
import 'package:open_library/models/docs_model.dart';
import 'package:open_library/services/books_api.dart';

class SearchResultViewModel extends ChangeNotifier {
  final List _booksList = [];
  bool _isLoading = false;
  bool _firstSearch = true;

  get bookList => _booksList;
  get isLoading => _isLoading;
  get firstSearch => _firstSearch;

  setBookList(booklist) {
    _booksList.add(booklist);
  }

  setLoading(bool loadingState) {
    _isLoading = loadingState;
  }

  clearBookList() {
    _booksList.clear();
  }

  getBooks(String book) async {
    clearBookList();
    _firstSearch = false;
    setLoading(true);
    notifyListeners();
    var response = await BooksApi.searchByBook(book) as SearchInfo;
    List<Docs>? docs = response.docs;
    docs!.forEach((v) {
      setBookList(v);
    });
    notifyListeners();
    setLoading(false);
    notifyListeners();
  }
}
