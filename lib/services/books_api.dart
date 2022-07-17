import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:open_library/models/book_model.dart';
import 'package:open_library/models/search_model.dart';
import 'dart:convert';

import 'package:open_library/utils/constants/api_config.dart';

class BooksApi {
  static Future<Object> searchByBook(String title) async {
    try {
      final response = await http.get(
          Uri.parse(ApiConfig().baseUrl + ApiConfig().searchEndPoint + title));

      if (response.statusCode == 200) {
        var jsonResponse = SearchInfo.fromJson(json.decode(response.body));
        return (jsonResponse);
      } else {
        print(response.reasonPhrase);
        return (response);
      }
    } catch (e) {
      debugPrint(e.toString());
      return ("miau");
    }
  }

  static Future<Object> getBookInfo(String id) async {
    try {
      final response = await http.get(Uri.parse(
          ApiConfig().baseUrl + ApiConfig().bookEndpoint + id + '.json'));

      if (response.statusCode == 200) {
        var jsonResponse = Book.fromJson(json.decode(response.body));
        return (jsonResponse);
      } else {
        print(response.reasonPhrase);
        return (response);
      }
    } catch (e) {
      debugPrint(e.toString());
      return ("miau");
    }
  }
}
