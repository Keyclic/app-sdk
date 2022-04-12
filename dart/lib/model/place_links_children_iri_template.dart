//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksChildrenIriTemplate {
  /// Returns a new [PlaceLinksChildrenIriTemplate] instance.
  PlaceLinksChildrenIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksChildrenIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksChildrenIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildrenIriTemplate(
      mapping: PlaceLinksChildrenIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  PlaceLinksChildrenIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildrenIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksChildrenIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksChildrenIriTemplate>[];
    }
    return json
        .map((value) {
          return PlaceLinksChildrenIriTemplate.fromJson(value);
        })
        .whereType<PlaceLinksChildrenIriTemplate>()
        .toList();
  }

  static Map<String, PlaceLinksChildrenIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksChildrenIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceLinksChildrenIriTemplate?>(
            key, PlaceLinksChildrenIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceLinksChildrenIriTemplate>;
  }

  // maps a json object with a list of PlaceLinksChildrenIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksChildrenIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceLinksChildrenIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceLinksChildrenIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksChildrenIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
