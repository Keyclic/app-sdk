//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Article {
  /// Returns a new [Article] instance.
  Article({
    this.links,
    this.createdAt,
    this.id,
    required this.name,
    this.text,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Article] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Article? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Article(
      links: ArticleLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      name: json[r'name'],
      text: json[r'text'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ArticleLinks? links;

  final DateTime? createdAt;

  final String? id;

  String name;

  String? text;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Article &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.name == name &&
        other.text == text &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      name.hashCode +
      (text == null ? 0 : text.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Article> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Article>[];
    }

    return json.fold(<Article>[], (List<Article> previousValue, element) {
      final Article? object = Article.fromJson(element);
      if (object is Article) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Article> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Article>{};
    }

    return json.entries.fold(<String, Article>{},
        (Map<String, Article> previousValue, element) {
      final Article? object = Article.fromJson(element.value);
      if (object is Article) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Article-objects as value to a dart map
  static Map<String, List<Article>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Article>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Article>>(key, Article.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Article[links=$links, createdAt=$createdAt, id=$id, name=$name, text=$text, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'name': name,
      if (keys == null || keys.contains(r'text')) r'text': text,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
