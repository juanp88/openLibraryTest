class DocsFull {
  String? key;
  String? type;
  List<String>? seed;
  String? title;
  String? titleSuggest;
  int? editionCount;
  List<String>? editionKey;
  List<String>? publishDate;
  List<int>? publishYear;
  int? firstPublishYear;
  int? numberOfPagesMedian;
  List<String>? lccn;
  List<String>? publishPlace;
  List<String>? oclc;
  List<String>? contributor;
  List<String>? lcc;
  List<String>? ddc;
  List<String>? isbn;
  int? lastModifiedI;
  List<String>? ia;
  int? ebookCountI;
  bool? hasFulltext;
  bool? publicScanB;
  String? iaCollectionS;
  String? lendingEditionS;
  String? lendingIdentifierS;
  String? printdisabledS;
  String? coverEditionKey;
  int? coverI;
  List<String>? firstSentence;
  List<String>? publisher;
  List<String>? language;
  List<String>? authorKey;
  List<String>? authorName;
  List<String>? authorAlternativeName;
  List<String>? person;
  List<String>? place;
  List<String>? subject;
  List<String>? idAlibrisId;
  List<String>? idAmazon;
  List<String>? idBodleianOxfordUniversity;
  List<String>? idDepSitoLegal;
  List<String>? idGoodreads;
  List<String>? idGoogle;
  List<String>? idHathiTrust;
  List<String>? idLibrarything;
  List<String>? idPaperbackSwap;
  List<String>? idWikidata;
  List<String>? idYakaboo;
  List<String>? iaLoadedId;
  List<String>? iaBoxId;
  List<String>? publisherFacet;
  List<String>? personKey;
  List<String>? placeKey;
  List<String>? personFacet;
  List<String>? subjectFacet;
  int? iVersion;
  List<String>? placeFacet;
  String? lccSort;
  List<String>? authorFacet;
  List<String>? subjectKey;
  String? ddcSort;
  List<String>? idAmazonCaAsin;
  List<String>? idAmazonCoUkAsin;
  List<String>? idAmazonDeAsin;
  List<String>? idAmazonItAsin;
  List<String>? idBritishLibrary;
  List<String>? idCanadianNationalLibraryArchive;
  List<String>? idAbebooksDe;
  List<String>? idBritishNationalBibliography;
  List<String>? idOverdrive;
  List<String>? time;
  List<String>? timeFacet;
  List<String>? timeKey;
  String? subtitle;

  DocsFull(
      {this.key,
      this.type,
      this.seed,
      this.title,
      this.titleSuggest,
      this.editionCount,
      this.editionKey,
      this.publishDate,
      this.publishYear,
      this.firstPublishYear,
      this.numberOfPagesMedian,
      this.lccn,
      this.publishPlace,
      this.oclc,
      this.contributor,
      this.lcc,
      this.ddc,
      this.isbn,
      this.lastModifiedI,
      this.ia,
      this.ebookCountI,
      this.hasFulltext,
      this.publicScanB,
      this.iaCollectionS,
      this.lendingEditionS,
      this.lendingIdentifierS,
      this.printdisabledS,
      this.coverEditionKey,
      this.coverI,
      this.firstSentence,
      this.publisher,
      this.language,
      this.authorKey,
      this.authorName,
      this.authorAlternativeName,
      this.person,
      this.place,
      this.subject,
      this.idAlibrisId,
      this.idAmazon,
      this.idBodleianOxfordUniversity,
      this.idDepSitoLegal,
      this.idGoodreads,
      this.idGoogle,
      this.idHathiTrust,
      this.idLibrarything,
      this.idPaperbackSwap,
      this.idWikidata,
      this.idYakaboo,
      this.iaLoadedId,
      this.iaBoxId,
      this.publisherFacet,
      this.personKey,
      this.placeKey,
      this.personFacet,
      this.subjectFacet,
      this.iVersion,
      this.placeFacet,
      this.lccSort,
      this.authorFacet,
      this.subjectKey,
      this.ddcSort,
      this.idAmazonCaAsin,
      this.idAmazonCoUkAsin,
      this.idAmazonDeAsin,
      this.idAmazonItAsin,
      this.idBritishLibrary,
      this.idCanadianNationalLibraryArchive,
      this.idAbebooksDe,
      this.idBritishNationalBibliography,
      this.idOverdrive,
      this.time,
      this.timeFacet,
      this.timeKey,
      this.subtitle});

  DocsFull.fromJson(Map<String, dynamic> json) {
    key = json['key']?.toString();
    type = json['type']?.toString();
    if (json['seed'] != null) {
      final v = json['seed'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      seed = arr0;
    }
    title = json['title']?.toString();
    titleSuggest = json['title_suggest']?.toString();
    hasFulltext = json['has_fulltext'];
    editionCount = json['edition_count']?.toInt();
    if (json['edition_key'] != null) {
      final v = json['edition_key'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      editionKey = arr0;
    }
    if (json['publish_date'] != null) {
      final v = json['publish_date'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      publishDate = arr0;
    }
    if (json['publish_year'] != null) {
      final v = json['publish_year'];
      final arr0 = <int>[];
      v!.forEach((v) {
        arr0.add(v.toInt());
      });
      publishYear = arr0;
    }
    firstPublishYear = json['first_publish_year']?.toInt();
    numberOfPagesMedian = json['number_of_pages_median']?.toInt();
    if (json['lccn'] != null) {
      final v = json['lccn'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      lccn = arr0;
    }
    if (json['publish_place'] != null) {
      final v = json['publish_place'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      publishPlace = arr0;
    }
    if (json['oclc'] != null) {
      final v = json['oclc'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      oclc = arr0;
    }
    if (json['contributor'] != null) {
      final v = json['contributor'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      contributor = arr0;
    }
    if (json['lcc'] != null) {
      final v = json['lcc'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      lcc = arr0;
    }
    if (json['ddc'] != null) {
      final v = json['ddc'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      ddc = arr0;
    }
    if (json['isbn'] != null) {
      final v = json['isbn'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      isbn = arr0;
    }
    lastModifiedI = json['last_modified_i']?.toInt();
    ebookCountI = json['ebook_count_i']?.toInt();
    if (json['ia'] != null) {
      final v = json['ia'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      ia = arr0;
    }
    publicScanB = json['public_scan_b'];
    iaCollectionS = json['ia_collection_s']?.toString();
    lendingEditionS = json['lending_edition_s']?.toString();
    lendingIdentifierS = json['lending_identifier_s']?.toString();
    printdisabledS = json['printdisabled_s']?.toString();
    coverEditionKey = json['cover_edition_key']?.toString();
    coverI = json['cover_i']?.toInt();
    if (json['first_sentence'] != null) {
      final v = json['first_sentence'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      firstSentence = arr0;
    }
    if (json['publisher'] != null) {
      final v = json['publisher'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      publisher = arr0;
    }
    if (json['language'] != null) {
      final v = json['language'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      language = arr0;
    }
    if (json['author_key'] != null) {
      final v = json['author_key'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      authorKey = arr0;
    }
    if (json['author_name'] != null) {
      final v = json['author_name'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      authorName = arr0;
    }
    if (json['author_alternative_name'] != null) {
      final v = json['author_alternative_name'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      authorAlternativeName = arr0;
    }
    if (json['person'] != null) {
      final v = json['person'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      person = arr0;
    }
    if (json['place'] != null) {
      final v = json['place'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      place = arr0;
    }
    if (json['subject'] != null) {
      final v = json['subject'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      subject = arr0;
    }
    if (json['time'] != null) {
      final v = json['time'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      time = arr0;
    }
    if (json['id_amazon'] != null) {
      final v = json['id_amazon'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      idAmazon = arr0;
    }
    if (json['id_goodreads'] != null) {
      final v = json['id_goodreads'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      idGoodreads = arr0;
    }
    if (json['id_google'] != null) {
      final v = json['id_google'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      idGoogle = arr0;
    }
    if (json['id_librarything'] != null) {
      final v = json['id_librarything'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      idLibrarything = arr0;
    }
    if (json['id_librivox'] != null) {
      final v = json['id_librivox'];
      final arr0 = <String>[];
      v!.forEach((v) {
        arr0.add(v.toString());
      });
      if (json['ia_box_id'] != null) {
        final v = json['ia_box_id'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        iaBoxId = arr0;
      }
      if (json['publisher_facet'] != null) {
        final v = json['publisher_facet'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        publisherFacet = arr0;
      }
      if (json['person_key'] != null) {
        final v = json['person_key'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        personKey = arr0;
      }
      if (json['place_key'] != null) {
        final v = json['place_key'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        placeKey = arr0;
      }
      if (json['time_facet'] != null) {
        final v = json['time_facet'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        timeFacet = arr0;
      }
      if (json['person_facet'] != null) {
        final v = json['person_facet'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        personFacet = arr0;
      }
      if (json['subject_facet'] != null) {
        final v = json['subject_facet'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        subjectFacet = arr0;
      }
      iVersion = json['_version_']?.toInt();
      if (json['place_facet'] != null) {
        final v = json['place_facet'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        placeFacet = arr0;
      }
      lccSort = json['lcc_sort']?.toString();
      if (json['author_facet'] != null) {
        final v = json['author_facet'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        authorFacet = arr0;
      }
      if (json['subject_key'] != null) {
        final v = json['subject_key'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        subjectKey = arr0;
      }
      ddcSort = json['ddc_sort']?.toString();
      if (json['time_key'] != null) {
        final v = json['time_key'];
        final arr0 = <String>[];
        v!.forEach((v) {
          arr0.add(v.toString());
        });
        timeKey = arr0;
      }
    }
    Map<String, dynamic> toJson() {
      final data = <String, dynamic>{};
      data['key'] = key;
      data['type'] = type;
      if (seed != null) {
        final v = seed;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['seed'] = arr0;
      }
      data['title'] = title;
      data['title_suggest'] = titleSuggest;
      data['has_fulltext'] = hasFulltext;
      data['edition_count'] = editionCount;
      if (editionKey != null) {
        final v = editionKey;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['edition_key'] = arr0;
      }
      if (publishDate != null) {
        final v = publishDate;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['publish_date'] = arr0;
      }
      if (publishYear != null) {
        final v = publishYear;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['publish_year'] = arr0;
      }
      data['first_publish_year'] = firstPublishYear;
      data['number_of_pages_median'] = numberOfPagesMedian;
      if (lccn != null) {
        final v = lccn;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['lccn'] = arr0;
      }
      if (publishPlace != null) {
        final v = publishPlace;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['publish_place'] = arr0;
      }
      if (oclc != null) {
        final v = oclc;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['oclc'] = arr0;
      }
      if (contributor != null) {
        final v = contributor;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['contributor'] = arr0;
      }
      if (lcc != null) {
        final v = lcc;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['lcc'] = arr0;
      }
      if (ddc != null) {
        final v = ddc;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['ddc'] = arr0;
      }
      if (isbn != null) {
        final v = isbn;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['isbn'] = arr0;
      }
      data['last_modified_i'] = lastModifiedI;
      data['ebook_count_i'] = ebookCountI;
      if (ia != null) {
        final v = ia;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['ia'] = arr0;
      }
      data['public_scan_b'] = publicScanB;
      data['ia_collection_s'] = iaCollectionS;
      data['lending_edition_s'] = lendingEditionS;
      data['lending_identifier_s'] = lendingIdentifierS;
      data['printdisabled_s'] = printdisabledS;
      data['cover_edition_key'] = coverEditionKey;
      data['cover_i'] = coverI;
      if (firstSentence != null) {
        final v = firstSentence;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['first_sentence'] = arr0;
      }
      if (publisher != null) {
        final v = publisher;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['publisher'] = arr0;
      }
      if (language != null) {
        final v = language;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['language'] = arr0;
      }
      if (authorKey != null) {
        final v = authorKey;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['author_key'] = arr0;
      }
      if (authorName != null) {
        final v = authorName;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['author_name'] = arr0;
      }
      if (authorAlternativeName != null) {
        final v = authorAlternativeName;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['author_alternative_name'] = arr0;
      }
      if (person != null) {
        final v = person;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['person'] = arr0;
      }
      if (place != null) {
        final v = place;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['place'] = arr0;
      }
      if (subject != null) {
        final v = subject;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['subject'] = arr0;
      }
      if (time != null) {
        final v = time;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['time'] = arr0;
      }
      if (idAmazon != null) {
        final v = idAmazon;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['id_amazon'] = arr0;
      }
      if (idGoodreads != null) {
        final v = idGoodreads;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['id_goodreads'] = arr0;
      }
      if (idGoogle != null) {
        final v = idGoogle;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['id_google'] = arr0;
      }
      if (idLibrarything != null) {
        final v = idLibrarything;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['id_librarything'] = arr0;
      }

      if (idOverdrive != null) {
        final v = idOverdrive;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['id_overdrive'] = arr0;
      }

      if (iaLoadedId != null) {
        final v = iaLoadedId;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['ia_loaded_id'] = arr0;
      }
      if (iaBoxId != null) {
        final v = iaBoxId;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['ia_box_id'] = arr0;
      }
      if (publisherFacet != null) {
        final v = publisherFacet;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['publisher_facet'] = arr0;
      }
      if (personKey != null) {
        final v = personKey;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['person_key'] = arr0;
      }
      if (placeKey != null) {
        final v = placeKey;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['place_key'] = arr0;
      }
      if (timeFacet != null) {
        final v = timeFacet;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['time_facet'] = arr0;
      }
      if (personFacet != null) {
        final v = personFacet;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['person_facet'] = arr0;
      }
      if (subjectFacet != null) {
        final v = subjectFacet;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['subject_facet'] = arr0;
      }
      data['_version_'] = iVersion;
      if (placeFacet != null) {
        final v = placeFacet;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['place_facet'] = arr0;
      }
      data['lcc_sort'] = lccSort;
      if (authorFacet != null) {
        final v = authorFacet;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['author_facet'] = arr0;
      }
      if (subjectKey != null) {
        final v = subjectKey;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['subject_key'] = arr0;
      }
      data['ddc_sort'] = ddcSort;
      if (timeKey != null) {
        final v = timeKey;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['time_key'] = arr0;
      }
      return data;
    }
  }
}
