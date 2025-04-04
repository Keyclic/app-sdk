//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class KnowledgeBaseLinksSelfIriTemplateMapping {
  /// Returns a new [KnowledgeBaseLinksSelfIriTemplateMapping] instance.
  KnowledgeBaseLinksSelfIriTemplateMapping({
    this.knowledgeBase,
  });

  /// Returns a new [KnowledgeBaseLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static KnowledgeBaseLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return KnowledgeBaseLinksSelfIriTemplateMapping(
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

    return other is KnowledgeBaseLinksSelfIriTemplateMapping &&
        other.knowledgeBase == knowledgeBase;
  }

  @override
  int get hashCode => (knowledgeBase == null ? 0 : knowledgeBase.hashCode);

  static List<KnowledgeBaseLinksSelfIriTemplateMapping> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <KnowledgeBaseLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<KnowledgeBaseLinksSelfIriTemplateMapping>[],
        (List<KnowledgeBaseLinksSelfIriTemplateMapping> previousValue,
            element) {
      final KnowledgeBaseLinksSelfIriTemplateMapping? object =
          KnowledgeBaseLinksSelfIriTemplateMapping.fromJson(element);
      if (object is KnowledgeBaseLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, KnowledgeBaseLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, KnowledgeBaseLinksSelfIriTemplateMapping>{},
        (Map<String, KnowledgeBaseLinksSelfIriTemplateMapping> previousValue,
            element) {
      final KnowledgeBaseLinksSelfIriTemplateMapping? object =
          KnowledgeBaseLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is KnowledgeBaseLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of KnowledgeBaseLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<KnowledgeBaseLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<KnowledgeBaseLinksSelfIriTemplateMapping>>(
          key, KnowledgeBaseLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'KnowledgeBaseLinksSelfIriTemplateMapping[knowledgeBase=$knowledgeBase]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'knowledgeBase'))
        r'knowledgeBase': knowledgeBase,
    };
  }
}
