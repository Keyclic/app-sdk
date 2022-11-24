//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Article {
  /// Returns a new [Article] instance.
  Article({
    this.links,
    this.createdAt,
    this.id,
    @required this.name,
    this.text,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Article] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Article.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
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

  ArticleLinks links;

  DateTime createdAt;

  String id;

  String name;

  String text;

  String type;

  DateTime updatedAt;

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
      (name == null ? 0 : name.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Article> listFromJson(List<dynamic> json) {
    return <Article>[
      if (json is List)
        for (dynamic value in json) Article.fromJson(value),
    ];
  }

  static Map<String, Article> mapFromJson(Map<String, dynamic> json) {
    return <String, Article>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Article.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Article-objects as value to a dart map
  static Map<String, List<Article>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Article>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Article.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Article[links=$links, createdAt=$createdAt, id=$id, name=$name, text=$text, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      r'name': name,
      if (text != null) r'text': text,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
