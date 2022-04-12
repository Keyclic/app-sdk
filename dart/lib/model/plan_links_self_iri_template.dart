//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanLinksSelfIriTemplate {
  /// Returns a new [PlanLinksSelfIriTemplate] instance.
  PlanLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlanLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksSelfIriTemplate(
      mapping: MarkerLinksPlanIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksPlanIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlanLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <PlanLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) PlanLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, PlanLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlanLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PlanLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
