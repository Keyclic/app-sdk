//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Point {
  /// Returns a new [Point] instance.
  Point({
    this.latitude,
    this.longitude,
    this.srid,
  });

  /// Returns a new [Point] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Point.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Point(
      latitude: json[r'latitude'],
      longitude: json[r'longitude'],
      srid: json[r'srid'],
    );
  }

  double latitude;

  double longitude;

  int srid;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Point &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.srid == srid;
  }

  @override
  int get hashCode =>
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode) +
      (srid == null ? 0 : srid.hashCode);

  static List<Point> listFromJson(List<dynamic> json) {
    return <Point>[
      if (json is List)
        for (dynamic value in json) Point.fromJson(value),
    ];
  }

  static Map<String, Point> mapFromJson(Map<String, dynamic> json) {
    return <String, Point>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Point.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Point-objects as value to a dart map
  static Map<String, List<Point>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Point>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Point.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Point[latitude=$latitude, longitude=$longitude, srid=$srid]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (latitude != null) r'latitude': latitude,
      if (longitude != null) r'longitude': longitude,
      if (srid != null) r'srid': srid,
    };
  }
}
