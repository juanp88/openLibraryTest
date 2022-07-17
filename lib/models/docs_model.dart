class Docs {
  String? id;
  String? key;
  String? title;
  List<String>? authorName;
  int? firstPublishYear;
  int? coverI;
  List<String>? firstSentence;
  List<String>? place;
  List<String>? person;

  Docs(
      {this.id,
      this.key,
      this.title,
      this.authorName = const [],
      this.firstPublishYear,
      this.coverI,
      this.firstSentence = const [],
      this.place = const [],
      this.person = const []});

  Docs.fromJson(Map<String, dynamic> json) {
    key = json['key'].substring(7);
    id = json['id'];
    title = json['title'];
    authorName = (json['author_name'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const [""];
    firstPublishYear = json['first_publish_year'] as int? ?? 0;
    coverI = json['cover_i'];
    firstSentence = (json['first_sentence'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const [];
    person =
        (json['person'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            const [];
    place =
        (json['place'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            const [];
  }
}
