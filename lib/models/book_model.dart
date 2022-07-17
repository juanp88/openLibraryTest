import 'dart:io';

class Book {
  String? description;
  List<Links>? links = [];
  String? title;
  String? key;

  Book({
    this.description,
    this.links,
    this.title,
    this.key,
  });

  Book.fromJson(Map<String, dynamic> json) {
    description =
        (json['description'] != null && json.containsKey('description')
            ? (json['description'] is Map)
                ? Description.fromJson(json['description']).value
                : json['description']
            : "descripción no disponible");
    if (json.containsKey('links') && json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    } else {
      links?.add(Links(url: 'no hay urls disponibles'));
    }
    title = json['title'];

    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;

    return data;
  }
}

class Links {
  String? url;
  String? title;
  Type? type;

  Links({this.url, this.title, this.type});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['title'] = this.title;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    return data;
  }
}

class Type {
  String? key;

  Type({this.key});

  Type.fromJson(Map<String, dynamic> json) {
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    return data;
  }
}

class Description {
  String? type;
  String? value;

  Description({this.type, this.value});

  Description.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    return data;
  }
}
