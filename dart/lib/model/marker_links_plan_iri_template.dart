//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MarkerLinksPlanIriTemplate {
  /// Returns a new [MarkerLinksPlanIriTemplate] instance.
  MarkerLinksPlanIriTemplate({
    this.mapping,
  });

  /// Returns a new [MarkerLinksPlanIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MarkerLinksPlanIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlanIriTemplate(
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

    return other is MarkerLinksPlanIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MarkerLinksPlanIriTemplate> listFromJson(List<dynamic> json) {
    return <MarkerLinksPlanIriTemplate>[
      if (json is List)
        for (dynamic value in json) MarkerLinksPlanIriTemplate.fromJson(value),
    ];
  }

  static Map<String, MarkerLinksPlanIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, MarkerLinksPlanIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerLinksPlanIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MarkerLinksPlanIriTemplate-objects as value to a dart map
  static Map<String, List<MarkerLinksPlanIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MarkerLinksPlanIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerLinksPlanIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksPlanIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
