//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantLinksPlaceIriTemplate {
  /// Returns a new [OccupantLinksPlaceIriTemplate] instance.
  OccupantLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlaceIriTemplate(
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

    return other is OccupantLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return <OccupantLinksPlaceIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OccupantLinksPlaceIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OccupantLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OccupantLinksPlaceIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksPlaceIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantLinksPlaceIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
