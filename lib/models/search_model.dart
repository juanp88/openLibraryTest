import 'docs_model.dart';
import 'docs_model_full.dart';

class SearchInfo {
  int? numFound;
  int? start;
  bool? numFoundExact;
  List<Docs>? docs;
  int? num_Found;
  String? q;
  Null? offset;

  SearchInfo(
      {this.numFound,
      this.start,
      this.numFoundExact,
      this.docs,
      this.num_Found,
      this.q,
      this.offset});

  SearchInfo.fromJson(Map<String, dynamic> json) {
    numFound = json['numFound'];
    start = json['start'];
    numFoundExact = json['numFoundExact'];
    if (json['docs'] != null) {
      docs = [];
      json['docs'].forEach((v) {
        // con esto me aseguro de traer solo los libros que tienen texto completo, es decir los mas relevantes.
        if (v['has_fulltext'] == true) {
          docs!.add(Docs.fromJson(v));
        }
      });
    }
    numFound = json['num_found'];
    q = json['q'];
    offset = json['offset'];
  }
}
