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

    return json.fold(<KnowledgeBaseLinksSelfIriTemplate>[],
        (List<KnowledgeBaseLinksSelfIriTemplate> previousValue, element) {
      final KnowledgeBaseLinksSelfIriTemplate? object =
          KnowledgeBaseLinksSelfIriTemplate.fromJson(element);
      if (object is KnowledgeBaseLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, KnowledgeBaseLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, KnowledgeBaseLinksSelfIriTemplate>{},
        (Map<String, KnowledgeBaseLinksSelfIriTemplate> previousValue,
            element) {
      final KnowledgeBaseLinksSelfIriTemplate? object =
          KnowledgeBaseLinksSelfIriTemplate.fromJson(element.value);
      if (object is KnowledgeBaseLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of KnowledgeBaseLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<KnowledgeBaseLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<KnowledgeBaseLinksSelfIriTemplate>>(
          key, KnowledgeBaseLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'KnowledgeBaseLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
