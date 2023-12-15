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
      elevation: json[r'elevation']?.toDouble(),
      polygon: Polygon.fromJson(json[r'polygon']),
    );
  }

  GeoShapeCentroid? centroid;

  double? elevation;

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

    return json.fold(<GeoShape>[], (List<GeoShape> previousValue, element) {
      final GeoShape? object = GeoShape.fromJson(element);
      if (object is GeoShape) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GeoShape> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoShape>{};
    }

    return json.entries.fold(<String, GeoShape>{},
        (Map<String, GeoShape> previousValue, element) {
      final GeoShape? object = GeoShape.fromJson(element.value);
      if (object is GeoShape) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GeoShape-objects as value to a dart map
  static Map<String, List<GeoShape>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GeoShape>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GeoShape>>(
          key, GeoShape.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GeoShape[centroid=$centroid, elevation=$elevation, polygon=$polygon]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && centroid != null) ||
          (keys?.contains(r'centroid') ?? false))
        r'centroid': centroid?.toJson(),
      if ((keys == null && elevation != null) ||
          (keys?.contains(r'elevation') ?? false))
        r'elevation': elevation,
      if ((keys == null && polygon != null) ||
          (keys?.contains(r'polygon') ?? false))
        r'polygon': polygon?.toJson(),
    };
  }
}
