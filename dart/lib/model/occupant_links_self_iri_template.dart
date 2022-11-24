//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantLinksSelfIriTemplate {
  /// Returns a new [OccupantLinksSelfIriTemplate] instance.
  OccupantLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelfIriTemplate(
      mapping: OccupantLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  OccupantLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <OccupantLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OccupantLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OccupantLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
