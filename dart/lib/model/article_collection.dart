//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleCollection {
  /// Returns a new [ArticleCollection] instance.
  ArticleCollection({
    this.items,
  });

  /// Returns a new [ArticleCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<ArticleCollection>[],
        (List<ArticleCollection> previousValue, element) {
      final ArticleCollection? object = ArticleCollection.fromJson(element);
      if (object is ArticleCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleCollection>{};
    }

    return json.entries.fold(<String, ArticleCollection>{},
        (Map<String, ArticleCollection> previousValue, element) {
      final ArticleCollection? object =
          ArticleCollection.fromJson(element.value);
      if (object is ArticleCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleCollection-objects as value to a dart map
  static Map<String, List<ArticleCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleCollection>>(
          key, ArticleCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticleCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
