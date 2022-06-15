//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSelf {
  /// Returns a new [ArticleLinksSelf] instance.
  ArticleLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ArticleLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelf(
      href: json[r'href'],
      iriTemplate: ArticleLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given article.
  String? href;

  ArticleLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ArticleLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSelf>[];
    }
    return json
        .map((value) {
          return ArticleLinksSelf.fromJson(value);
        })
        .whereType<ArticleLinksSelf>()
        .toList();
  }

  static Map<String, ArticleLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, ArticleLinksSelf?>(
        key, ArticleLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ArticleLinksSelf>;
  }

  // maps a json object with a list of ArticleLinksSelf-objects as value to a dart map
  static Map<String, List<ArticleLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ArticleLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ArticleLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticleLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
