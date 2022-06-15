//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticleLinksSectionIriTemplate {
  /// Returns a new [ArticleLinksSectionIriTemplate] instance.
  ArticleLinksSectionIriTemplate({
    this.mapping,
  });

  /// Returns a new [ArticleLinksSectionIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticleLinksSectionIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSectionIriTemplate(
      mapping: ArticleLinksSectionIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ArticleLinksSectionIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSectionIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ArticleLinksSectionIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ArticleLinksSectionIriTemplate>[];
    }
    return json
        .map((value) {
          return ArticleLinksSectionIriTemplate.fromJson(value);
        })
        .whereType<ArticleLinksSectionIriTemplate>()
        .toList();
  }

  static Map<String, ArticleLinksSectionIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticleLinksSectionIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ArticleLinksSectionIriTemplate?>(
            key, ArticleLinksSectionIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ArticleLinksSectionIriTemplate>;
  }

  // maps a json object with a list of ArticleLinksSectionIriTemplate-objects as value to a dart map
  static Map<String, List<ArticleLinksSectionIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ArticleLinksSectionIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ArticleLinksSectionIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticleLinksSectionIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
