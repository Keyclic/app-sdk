//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinksKnowledgeBaseIriTemplate {
  /// Returns a new [ApplicationLinksKnowledgeBaseIriTemplate] instance.
  ApplicationLinksKnowledgeBaseIriTemplate({
    this.mapping,
  });

  /// Returns a new [ApplicationLinksKnowledgeBaseIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinksKnowledgeBaseIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBaseIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
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

    return other is ApplicationLinksKnowledgeBaseIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ApplicationLinksKnowledgeBaseIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ApplicationLinksKnowledgeBaseIriTemplate>[];
    }

    return json.fold(<ApplicationLinksKnowledgeBaseIriTemplate>[],
        (List<ApplicationLinksKnowledgeBaseIriTemplate> previousValue,
            element) {
      final ApplicationLinksKnowledgeBaseIriTemplate? object =
          ApplicationLinksKnowledgeBaseIriTemplate.fromJson(element);
      if (object is ApplicationLinksKnowledgeBaseIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationLinksKnowledgeBaseIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksKnowledgeBaseIriTemplate>{};
    }

    return json.entries.fold(
        <String, ApplicationLinksKnowledgeBaseIriTemplate>{},
        (Map<String, ApplicationLinksKnowledgeBaseIriTemplate> previousValue,
            element) {
      final ApplicationLinksKnowledgeBaseIriTemplate? object =
          ApplicationLinksKnowledgeBaseIriTemplate.fromJson(element.value);
      if (object is ApplicationLinksKnowledgeBaseIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationLinksKnowledgeBaseIriTemplate-objects as value to a dart map
  static Map<String, List<ApplicationLinksKnowledgeBaseIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationLinksKnowledgeBaseIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationLinksKnowledgeBaseIriTemplate>>(
          key, ApplicationLinksKnowledgeBaseIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationLinksKnowledgeBaseIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
