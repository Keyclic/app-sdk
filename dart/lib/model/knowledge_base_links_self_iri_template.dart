//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class KnowledgeBaseLinksSelfIriTemplate {
  /// Returns a new [KnowledgeBaseLinksSelfIriTemplate] instance.
  KnowledgeBaseLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [KnowledgeBaseLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static KnowledgeBaseLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KnowledgeBaseLinksSelfIriTemplate(
      mapping: ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ApplicationLinksKnowledgeBaseIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBaseLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<KnowledgeBaseLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <KnowledgeBaseLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return KnowledgeBaseLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<KnowledgeBaseLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, KnowledgeBaseLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, KnowledgeBaseLinksSelfIriTemplate?>(
            key, KnowledgeBaseLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, KnowledgeBaseLinksSelfIriTemplate>;
  }

  // maps a json object with a list of KnowledgeBaseLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<KnowledgeBaseLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              KnowledgeBaseLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'KnowledgeBaseLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
