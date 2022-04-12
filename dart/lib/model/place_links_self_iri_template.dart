//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksSelfIriTemplate {
  /// Returns a new [PlaceLinksSelfIriTemplate] instance.
  PlaceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelfIriTemplate(
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

    return other is PlaceLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return PlaceLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<PlaceLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, PlaceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceLinksSelfIriTemplate?>(
            key, PlaceLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceLinksSelfIriTemplate>;
  }

  // maps a json object with a list of PlaceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
