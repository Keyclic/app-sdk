//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticlePaginationAllOf {
  /// Returns a new [ArticlePaginationAllOf] instance.
  ArticlePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ArticlePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticlePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticlePaginationAllOf(
      embedded: ArticleCollection.fromJson(json[r'_embedded']),
    );
  }

  ArticleCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticlePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ArticlePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticlePaginationAllOf>[];
    }
    return json
        .map((value) {
          return ArticlePaginationAllOf.fromJson(value);
        })
        .whereType<ArticlePaginationAllOf>()
        .toList();
  }

  static Map<String, ArticlePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticlePaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ArticlePaginationAllOf?>(
            key, ArticlePaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ArticlePaginationAllOf>;
  }

  // maps a json object with a list of ArticlePaginationAllOf-objects as value to a dart map
  static Map<String, List<ArticlePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ArticlePaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ArticlePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticlePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
