//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ArticleLinksSelfIriTemplate {
  /// Returns a new [ArticleLinksSelfIriTemplate] instance.
  ArticleLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ArticleLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ArticleLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelfIriTemplate(
      mapping: ArticleLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ArticleLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ArticleLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <ArticleLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) ArticleLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ArticleLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ArticleLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ArticleLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ArticleLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ArticleLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ArticleLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ArticleLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ArticleLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
