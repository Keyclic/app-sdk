//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksImageIriTemplate {
  /// Returns a new [PlanLinksImageIriTemplate] instance.
  PlanLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlanLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksImageIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksImageIriTemplate(
      mapping: MarkerLinksPlanIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksPlanIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksImageIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlanLinksImageIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanLinksImageIriTemplate>[];
    }
    return json
        .map((value) {
          return PlanLinksImageIriTemplate.fromJson(value);
        })
        .whereType<PlanLinksImageIriTemplate>()
        .toList();
  }

  static Map<String, PlanLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksImageIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlanLinksImageIriTemplate?>(
            key, PlanLinksImageIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlanLinksImageIriTemplate>;
  }

  // maps a json object with a list of PlanLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<PlanLinksImageIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlanLinksImageIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlanLinksImageIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinksImageIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
