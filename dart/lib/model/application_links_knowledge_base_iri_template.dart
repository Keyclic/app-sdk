//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationLinksKnowledgeBaseIriTemplate {
  /// Returns a new [ApplicationLinksKnowledgeBaseIriTemplate] instance.
  ApplicationLinksKnowledgeBaseIriTemplate({
    this.mapping,
  });

  /// Returns a new [ApplicationLinksKnowledgeBaseIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationLinksKnowledgeBaseIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBaseIriTemplate(
      mapping: ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ApplicationLinksKnowledgeBaseIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksKnowledgeBaseIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ApplicationLinksKnowledgeBaseIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ApplicationLinksKnowledgeBaseIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ApplicationLinksKnowledgeBaseIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ApplicationLinksKnowledgeBaseIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationLinksKnowledgeBaseIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ApplicationLinksKnowledgeBaseIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationLinksKnowledgeBaseIriTemplate-objects as value to a dart map
  static Map<String, List<ApplicationLinksKnowledgeBaseIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ApplicationLinksKnowledgeBaseIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinksKnowledgeBaseIriTemplate.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationLinksKnowledgeBaseIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
