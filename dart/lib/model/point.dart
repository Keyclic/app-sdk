//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static Point? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Point(
      latitude: json[r'latitude']?.toDouble(),
      longitude: json[r'longitude']?.toDouble(),
      srid: json[r'srid'],
    );
  }

  double? latitude;

  double? longitude;

  int? srid;

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

  static List<Point> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <Point>[];
    }

    return json.fold(<Point>[], (List<Point> previousValue, element) {
      final Point? object = Point.fromJson(element);
      if (object is Point) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Point> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Point>{};
    }

    return json.entries.fold(<String, Point>{},
        (Map<String, Point> previousValue, element) {
      final Point? object = Point.fromJson(element.value);
      if (object is Point) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Point-objects as value to a dart map
  static Map<String, List<Point>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Point>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Point>>(key, Point.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Point[latitude=$latitude, longitude=$longitude, srid=$srid]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && latitude != null) ||
          (keys?.contains(r'latitude') ?? false))
        r'latitude': latitude,
      if ((keys == null && longitude != null) ||
          (keys?.contains(r'longitude') ?? false))
        r'longitude': longitude,
      if ((keys == null && srid != null) || (keys?.contains(r'srid') ?? false))
        r'srid': srid,
    };
  }
}
