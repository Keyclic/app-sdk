//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksPlaceIriTemplate {
  /// Returns a new [OccupantLinksPlaceIriTemplate] instance.
  OccupantLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksPlaceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlaceIriTemplate(
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

    return other is OccupantLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksPlaceIriTemplate>[];
    }
    return json
        .map((value) {
          return OccupantLinksPlaceIriTemplate.fromJson(value);
        })
        .whereType<OccupantLinksPlaceIriTemplate>()
        .toList();
  }

  static Map<String, OccupantLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksPlaceIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OccupantLinksPlaceIriTemplate?>(
            key, OccupantLinksPlaceIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OccupantLinksPlaceIriTemplate>;
  }

  // maps a json object with a list of OccupantLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OccupantLinksPlaceIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
