part of keyclic_sdk_api.api;

class PlaceGeo {
  PlaceGeo({
    this.polygon,
    this.elevation,
    this.centroid,
  });

  PlaceGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    polygon = PlaceGeoPolygon.fromJson(json['polygon']);
    elevation = json['elevation']?.toDouble();
    centroid = PlaceGeoCentroid.fromJson(json['centroid']);
  }

  PlaceGeoPolygon polygon;

  double elevation;

  PlaceGeoCentroid centroid;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeo &&
        runtimeType == other.runtimeType &&
        polygon == other.polygon &&
        elevation == other.elevation;
  }

  @override
  int get hashCode => 0 ^ polygon.hashCode ^ elevation.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'polygon': polygon,
      'elevation': elevation,
      'centroid': centroid,
    };
  }

  @override
  String toString() {
    return 'PlaceGeo[polygon=$polygon, elevation=$elevation, centroid=$centroid, ]';
  }

  static List<PlaceGeo> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceGeo>()
        : json.map((value) => PlaceGeo.fromJson(value)).toList();
  }

  static Map<String, PlaceGeo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeo>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PlaceGeo.fromJson(value));
    }
    return map;
  }
}
