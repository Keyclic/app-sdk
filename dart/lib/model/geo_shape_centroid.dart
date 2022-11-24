//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class GeoShapeCentroid {
  /// Returns a new [GeoShapeCentroid] instance.
  GeoShapeCentroid({
    @required this.latitude,
    @required this.longitude,
  });

  /// Returns a new [GeoShapeCentroid] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory GeoShapeCentroid.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GeoShapeCentroid(
      latitude: json[r'latitude'],
      longitude: json[r'longitude'],
    );
  }

  double latitude;

  double longitude;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoShapeCentroid &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode =>
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode);

  static List<GeoShapeCentroid> listFromJson(List<dynamic> json) {
    return <GeoShapeCentroid>[
      if (json is List)
        for (dynamic value in json) GeoShapeCentroid.fromJson(value),
    ];
  }

  static Map<String, GeoShapeCentroid> mapFromJson(Map<String, dynamic> json) {
    return <String, GeoShapeCentroid>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: GeoShapeCentroid.fromJson(entry.value),
    };
  }

  // maps a json object with a list of GeoShapeCentroid-objects as value to a dart map
  static Map<String, List<GeoShapeCentroid>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<GeoShapeCentroid>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: GeoShapeCentroid.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'GeoShapeCentroid[latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'latitude': latitude,
      r'longitude': longitude,
    };
  }
}
