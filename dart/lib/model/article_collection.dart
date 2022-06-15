//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleCollection {
  /// Returns a new [ArticleCollection] instance.
  ArticleCollection({
    this.items = const [],
  });

  /// Returns a new [ArticleCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleCollection(
      items: Article.listFromJson(json[r'items']),
    );
  }

  List<Article>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ArticleCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticleCollection>[];
    }
    return json
        .map((value) {
          return ArticleCollection.fromJson(value);
        })
        .whereType<ArticleCollection>()
        .toList();
  }

  static Map<String, ArticleCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, ArticleCollection?>(
        key, ArticleCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ArticleCollection>;
  }

  // maps a json object with a list of ArticleCollection-objects as value to a dart map
  static Map<String, List<ArticleCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ArticleCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ArticleCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticleCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
