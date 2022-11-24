//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanLinksPlaceIriTemplate {
  /// Returns a new [PlanLinksPlaceIriTemplate] instance.
  PlanLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlanLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlanLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return <PlanLinksPlaceIriTemplate>[
      if (json is List)
        for (dynamic value in json) PlanLinksPlaceIriTemplate.fromJson(value),
    ];
  }

  static Map<String, PlanLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlanLinksPlaceIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksPlaceIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<PlanLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksPlaceIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
