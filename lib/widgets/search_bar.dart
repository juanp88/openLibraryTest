import 'package:flutter/material.dart';
import 'package:open_library/services/books_api.dart';
import 'package:open_library/viewmodel/search_result_view_model.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarrState();
}

class _SearchBarrState extends State<SearchBar> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final booksProvider =
        Provider.of<SearchResultViewModel>(context, listen: true);

    return Container(
      width: MediaQuery.of(context).devicePixelRatio * 120,
      child: TextField(
        controller: _controller,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: 'Ingresa el libro que deseas buscar.',
            hintStyle: const TextStyle(color: Colors.white),
            suffixIcon: GestureDetector(
              onTap: () => booksProvider.getBooks(_controller.text),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            filled: true,
            fillColor: Colors.black,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}
