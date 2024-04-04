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
  static ArticleLinksSection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<ArticleLinksSection>[],
        (List<ArticleLinksSection> previousValue, element) {
      final ArticleLinksSection? object = ArticleLinksSection.fromJson(element);
      if (object is ArticleLinksSection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinksSection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSection>{};
    }

    return json.entries.fold(<String, ArticleLinksSection>{},
        (Map<String, ArticleLinksSection> previousValue, element) {
      final ArticleLinksSection? object =
          ArticleLinksSection.fromJson(element.value);
      if (object is ArticleLinksSection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinksSection-objects as value to a dart map
  static Map<String, List<ArticleLinksSection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinksSection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinksSection>>(
          key, ArticleLinksSection.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ArticleLinksSection[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
