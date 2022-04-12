//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksGeoIriTemplate {
  /// Returns a new [PlaceLinksGeoIriTemplate] instance.
  PlaceLinksGeoIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksGeoIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksGeoIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksGeoIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksGeoIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksGeoIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksGeoIriTemplate>[];
    }
    return json
        .map((value) {
          return PlaceLinksGeoIriTemplate.fromJson(value);
        })
        .whereType<PlaceLinksGeoIriTemplate>()
        .toList();
  }

  static Map<String, PlaceLinksGeoIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksGeoIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceLinksGeoIriTemplate?>(
            key, PlaceLinksGeoIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceLinksGeoIriTemplate>;
  }

  // maps a json object with a list of PlaceLinksGeoIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksGeoIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceLinksGeoIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceLinksGeoIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksGeoIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
