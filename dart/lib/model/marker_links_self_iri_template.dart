//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MarkerLinksSelfIriTemplate {
  /// Returns a new [MarkerLinksSelfIriTemplate] instance.
  MarkerLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [MarkerLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MarkerLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelfIriTemplate(
      mapping: MarkerLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MarkerLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <MarkerLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) MarkerLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, MarkerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, MarkerLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MarkerLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<MarkerLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MarkerLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
