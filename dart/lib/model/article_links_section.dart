//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSection {
  /// Returns a new [ArticleLinksSection] instance.
  ArticleLinksSection({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ArticleLinksSection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSection(
      href: json[r'href'],
      iriTemplate:
          ArticleLinksSectionIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the section associated to the given article.
  String? href;

  ArticleLinksSectionIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSection &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ArticleLinksSection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSection>[];
    }
    return json
        .map((value) {
          return ArticleLinksSection.fromJson(value);
        })
        .whereType<ArticleLinksSection>()
        .toList();
  }

  static Map<String, ArticleLinksSection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSection>{};
    }

    final map = json.map((key, value) => MapEntry<String, ArticleLinksSection?>(
        key, ArticleLinksSection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ArticleLinksSection>;
  }

  // maps a json object with a list of ArticleLinksSection-objects as value to a dart map
  static Map<String, List<ArticleLinksSection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ArticleLinksSection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ArticleLinksSection.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ArticleLinksSection[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
