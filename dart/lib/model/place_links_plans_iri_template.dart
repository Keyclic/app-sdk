//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksPlansIriTemplate {
  /// Returns a new [PlaceLinksPlansIriTemplate] instance.
  PlaceLinksPlansIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksPlansIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksPlansIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksPlansIriTemplate(
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

    return other is PlaceLinksPlansIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksPlansIriTemplate> listFromJson(List<dynamic> json) {
    return <PlaceLinksPlansIriTemplate>[
      if (json is List)
        for (dynamic value in json) PlaceLinksPlansIriTemplate.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceLinksPlansIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksPlansIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksPlansIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksPlansIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinksPlansIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksPlansIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksPlansIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
