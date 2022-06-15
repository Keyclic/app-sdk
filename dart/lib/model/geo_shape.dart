//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class GeoShape {
  /// Returns a new [GeoShape] instance.
  GeoShape({
    this.centroid,
    this.elevation,
    this.polygon,
  });

  /// Returns a new [GeoShape] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoShape? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GeoShape(
      centroid: GeoShapeCentroid.fromJson(json[r'centroid']),
      elevation: json[r'elevation'],
      polygon: Polygon.fromJson(json[r'polygon']),
    );
  }

  GeoShapeCentroid? centroid;

  int? elevation;

  Polygon? polygon;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoShape &&
        other.centroid == centroid &&
        other.elevation == elevation &&
        other.polygon == polygon;
  }

  @override
  int get hashCode =>
      (centroid == null ? 0 : centroid.hashCode) +
      (elevation == null ? 0 : elevation.hashCode) +
      (polygon == null ? 0 : polygon.hashCode);

  static List<GeoShape> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GeoShape>[];
    }
    return json
        .map((value) {
          return GeoShape.fromJson(value);
        })
        .whereType<GeoShape>()
        .toList();
  }

  static Map<String, GeoShape> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoShape>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, GeoShape?>(key, GeoShape.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, GeoShape>;
  }

  // maps a json object with a list of GeoShape-objects as value to a dart map
  static Map<String, List<GeoShape>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<GeoShape>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: GeoShape.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'GeoShape[centroid=$centroid, elevation=$elevation, polygon=$polygon]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (centroid != null) r'centroid': centroid,
      if (elevation != null) r'elevation': elevation,
      if (polygon != null) r'polygon': polygon,
    };
  }
}
