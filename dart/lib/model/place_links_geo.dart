//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksGeo {
  /// Returns a new [PlaceLinksGeo] instance.
  PlaceLinksGeo({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksGeo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksGeo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksGeo(
      href: json[r'href'],
      iriTemplate: PlaceLinksGeoIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the geo associated to the given place.
  String? href;

  PlaceLinksGeoIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksGeo &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksGeo> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksGeo>[];
    }
    return json
        .map((value) {
          return PlaceLinksGeo.fromJson(value);
        })
        .whereType<PlaceLinksGeo>()
        .toList();
  }

  static Map<String, PlaceLinksGeo> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksGeo>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceLinksGeo?>(key, PlaceLinksGeo.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceLinksGeo>;
  }

  // maps a json object with a list of PlaceLinksGeo-objects as value to a dart map
  static Map<String, List<PlaceLinksGeo>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceLinksGeo>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceLinksGeo.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksGeo[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
