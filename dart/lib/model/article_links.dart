//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ArticleLinks {
  /// Returns a new [ArticleLinks] instance.
  ArticleLinks({
    this.section,
    this.self,
  });

  /// Returns a new [ArticleLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ArticleLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinks(
      section: ArticleLinksSection.fromJson(json[r'section']),
      self: ArticleLinksSelf.fromJson(json[r'self']),
    );
  }

  ArticleLinksSection section;

  ArticleLinksSelf self;

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

  static List<ArticleLinks> listFromJson(List<dynamic> json) {
    return <ArticleLinks>[
      if (json is List)
        for (dynamic value in json) ArticleLinks.fromJson(value),
    ];
  }

  static Map<String, ArticleLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, ArticleLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ArticleLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ArticleLinks-objects as value to a dart map
  static Map<String, List<ArticleLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ArticleLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ArticleLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticleLinks[section=$section, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (section != null) r'section': section,
      if (self != null) r'self': self,
    };
  }
}
