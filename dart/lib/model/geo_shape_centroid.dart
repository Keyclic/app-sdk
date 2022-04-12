//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class GeoShapeCentroid {
  /// Returns a new [GeoShapeCentroid] instance.
  GeoShapeCentroid({
    required this.latitude,
    required this.longitude,
  });

  /// Returns a new [GeoShapeCentroid] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoShapeCentroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GeoShapeCentroid(
      latitude: json[r'latitude'].toDouble(),
      longitude: json[r'longitude'].toDouble(),
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
  int get hashCode => latitude.hashCode + longitude.hashCode;

  static List<GeoShapeCentroid> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GeoShapeCentroid>[];
    }
    return json
        .map((value) {
          return GeoShapeCentroid.fromJson(value);
        })
        .whereType<GeoShapeCentroid>()
        .toList();
  }

  static Map<String, GeoShapeCentroid> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GeoShapeCentroid>{};
    }

    final map = json.map((key, value) => MapEntry<String, GeoShapeCentroid?>(
        key, GeoShapeCentroid.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, GeoShapeCentroid>;
  }

  // maps a json object with a list of GeoShapeCentroid-objects as value to a dart map
  static Map<String, List<GeoShapeCentroid>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<GeoShapeCentroid>>{
      if (json is Map)
        for (final entry in json!.entries)
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
