//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ArticleLinksSelfIriTemplateMapping {
  /// Returns a new [ArticleLinksSelfIriTemplateMapping] instance.
  ArticleLinksSelfIriTemplateMapping({
    this.article,
  });

  /// Returns a new [ArticleLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ArticleLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelfIriTemplateMapping(
      article: json[r'article'],
    );
  }

  String article;

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
      List<dynamic> json) {
    return <ArticleLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          ArticleLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, ArticleLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ArticleLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ArticleLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ArticleLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ArticleLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ArticleLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ArticleLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticleLinksSelfIriTemplateMapping[article=$article]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (article != null) r'article': article,
    };
  }
}
