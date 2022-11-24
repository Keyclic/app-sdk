//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantLinksMemberIriTemplate {
  /// Returns a new [OccupantLinksMemberIriTemplate] instance.
  OccupantLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksMemberIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksMemberIriTemplate> listFromJson(List<dynamic> json) {
    return <OccupantLinksMemberIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OccupantLinksMemberIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OccupantLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantLinksMemberIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksMemberIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantLinksMemberIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksMemberIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
