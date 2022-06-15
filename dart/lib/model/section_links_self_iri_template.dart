//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionLinksSelfIriTemplate {
  /// Returns a new [SectionLinksSelfIriTemplate] instance.
  SectionLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [SectionLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionLinksSelfIriTemplate(
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

    return other is SectionLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SectionLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return SectionLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<SectionLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, SectionLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SectionLinksSelfIriTemplate?>(
            key, SectionLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SectionLinksSelfIriTemplate>;
  }

  // maps a json object with a list of SectionLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<SectionLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SectionLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SectionLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SectionLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
