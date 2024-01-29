//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSelfIriTemplateMapping {
  /// Returns a new [ArticleLinksSelfIriTemplateMapping] instance.
  ArticleLinksSelfIriTemplateMapping({
    this.article,
  });

  /// Returns a new [ArticleLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelfIriTemplateMapping(
      article: json[r'article'],
    );
  }

  String? article;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelfIriTemplateMapping &&
        other.article == article;
  }

  @override
  int get hashCode => (article == null ? 0 : article.hashCode);

  static List<ArticleLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<ArticleLinksSelfIriTemplateMapping>[],
        (List<ArticleLinksSelfIriTemplateMapping> previousValue, element) {
      final ArticleLinksSelfIriTemplateMapping? object =
          ArticleLinksSelfIriTemplateMapping.fromJson(element);
      if (object is ArticleLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ArticleLinksSelfIriTemplateMapping>{},
        (Map<String, ArticleLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ArticleLinksSelfIriTemplateMapping? object =
          ArticleLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is ArticleLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ArticleLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinksSelfIriTemplateMapping>>(
          key, ArticleLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticleLinksSelfIriTemplateMapping[article=$article]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'article')) r'article': article,
    };
  }
}
