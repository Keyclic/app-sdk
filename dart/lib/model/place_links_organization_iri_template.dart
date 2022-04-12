//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksOrganizationIriTemplate {
  /// Returns a new [PlaceLinksOrganizationIriTemplate] instance.
  PlaceLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return <PlaceLinksOrganizationIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          PlaceLinksOrganizationIriTemplate.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceLinksOrganizationIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksOrganizationIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksOrganizationIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinksOrganizationIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              PlaceLinksOrganizationIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
