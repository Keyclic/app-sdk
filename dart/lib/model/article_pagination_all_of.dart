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

    return json.fold(<ArticlePaginationAllOf>[],
        (List<ArticlePaginationAllOf> previousValue, element) {
      final ArticlePaginationAllOf? object =
          ArticlePaginationAllOf.fromJson(element);
      if (object is ArticlePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticlePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticlePaginationAllOf>{};
    }

    return json.entries.fold(<String, ArticlePaginationAllOf>{},
        (Map<String, ArticlePaginationAllOf> previousValue, element) {
      final ArticlePaginationAllOf? object =
          ArticlePaginationAllOf.fromJson(element.value);
      if (object is ArticlePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticlePaginationAllOf-objects as value to a dart map
  static Map<String, List<ArticlePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticlePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticlePaginationAllOf>>(
          key, ArticlePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticlePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
