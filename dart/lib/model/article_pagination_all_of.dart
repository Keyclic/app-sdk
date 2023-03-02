//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ArticlePaginationAllOf {
  /// Returns a new [ArticlePaginationAllOf] instance.
  ArticlePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ArticlePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ArticlePaginationAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticlePaginationAllOf(
      embedded: ArticleCollection.fromJson(json[r'_embedded']),
    );
  }

  ArticleCollection embedded;

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

  static List<ArticlePaginationAllOf> listFromJson(List<dynamic> json) {
    return <ArticlePaginationAllOf>[
      if (json is List)
        for (dynamic value in json) ArticlePaginationAllOf.fromJson(value),
    ];
  }

  static Map<String, ArticlePaginationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ArticlePaginationAllOf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ArticlePaginationAllOf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ArticlePaginationAllOf-objects as value to a dart map
  static Map<String, List<ArticlePaginationAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ArticlePaginationAllOf>>{
      if (json is Map)
        for (final entry in json.entries)
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
