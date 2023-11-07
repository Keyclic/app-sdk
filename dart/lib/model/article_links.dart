//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinks {
  /// Returns a new [ArticleLinks] instance.
  ArticleLinks({
    this.section,
    this.self,
  });

  /// Returns a new [ArticleLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinks(
      section: json[r'section'] is! Map
          ? null
          : ArticleLinksSection.fromJson(json[r'section']),
      self: json[r'self'] is! Map
          ? null
          : ArticleLinksSelf.fromJson(json[r'self']),
    );
  }

  ArticleLinksSection? section;

  ArticleLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinks &&
        other.section == section &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (section == null ? 0 : section.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ArticleLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinks>[];
    }

    return json.fold(<ArticleLinks>[],
        (List<ArticleLinks> previousValue, element) {
      final ArticleLinks? object = ArticleLinks.fromJson(element);
      if (object is ArticleLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticleLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinks>{};
    }

    return json.entries.fold(<String, ArticleLinks>{},
        (Map<String, ArticleLinks> previousValue, element) {
      final ArticleLinks? object = ArticleLinks.fromJson(element.value);
      if (object is ArticleLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticleLinks-objects as value to a dart map
  static Map<String, List<ArticleLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticleLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticleLinks>>(
          key, ArticleLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArticleLinks[section=$section, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && section != null) ||
          (keys?.contains(r'section') ?? false))
        r'section': section?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
