//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinksKnowledgeBaseIriTemplateMapping {
  /// Returns a new [ApplicationLinksKnowledgeBaseIriTemplateMapping] instance.
  ApplicationLinksKnowledgeBaseIriTemplateMapping({
    this.knowledgeBase,
  });

  /// Returns a new [ApplicationLinksKnowledgeBaseIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinksKnowledgeBaseIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBaseIriTemplateMapping(
      knowledgeBase: json[r'knowledgeBase'],
    );
  }

  String? knowledgeBase;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksKnowledgeBaseIriTemplateMapping &&
        other.knowledgeBase == knowledgeBase;
  }

  @override
  int get hashCode => (knowledgeBase == null ? 0 : knowledgeBase.hashCode);

  static List<ApplicationLinksKnowledgeBaseIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ApplicationLinksKnowledgeBaseIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
              value);
        })
        .whereType<ApplicationLinksKnowledgeBaseIriTemplateMapping>()
        .toList();
  }

  static Map<String, ApplicationLinksKnowledgeBaseIriTemplateMapping>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksKnowledgeBaseIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ApplicationLinksKnowledgeBaseIriTemplateMapping?>(key,
            ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ApplicationLinksKnowledgeBaseIriTemplateMapping>;
  }

  // maps a json object with a list of ApplicationLinksKnowledgeBaseIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ApplicationLinksKnowledgeBaseIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ApplicationLinksKnowledgeBaseIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ApplicationLinksKnowledgeBaseIriTemplateMapping.listFromJson(
                  entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationLinksKnowledgeBaseIriTemplateMapping[knowledgeBase=$knowledgeBase]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (knowledgeBase != null) r'knowledgeBase': knowledgeBase,
    };
  }
}
